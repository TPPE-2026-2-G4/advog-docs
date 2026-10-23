# Integração com API do Datajud (CNJ) - US19

## Visão Geral
A funcionalidade de atualização de processos (**US19**) tem como objetivo consultar dados públicos dos tribunais para manter a situação, tribunal e datas dos processos sincronizadas no sistema, tanto de forma automática e periódica quanto sob demanda.

A solução utiliza a **API Pública do Datajud (Conselho Nacional de Justiça - CNJ)** por ser **gratuita, oficial e pública**.

---

## O que foi implementado no Backend

1. **Cliente HTTP Assíncrono do Datajud (`app/core/datajud_api.py`)**:
   - Sanitização e validação de número CNJ (20 dígitos).
   - Extração automática da sigla/alias do tribunal a partir do padrão nacional de numeração (`NNNNNNN-DD.AAAA.J.TR.OOOO`, onde `J.TR` mapeia o segmento e o tribunal).
   - **Mapeamento completo de 38 tribunais**: suporte a 27 Tribunais de Justiça Estaduais (incluindo TJTO com alias `tjto`), 6 Tribunais Regionais Federais (TRF1 a TRF6) e 5 Tribunais Regionais do Trabalho (TRT1 a TRT4 e TRT15).
   - Requisição `POST` com consulta Elasticsearch DSL (`match: { "numeroProcesso": ... }`) no endpoint específico do tribunal (`/api_publica_{tribunal}/_search`).
   - Autenticação via header `Authorization: ApiKey <CHAVE_PUBLICA_CNJ>`.
   - **Extração da data real do movimento**: obtenção do timestamp `dataHora` da última movimentação (`dadosBasicos.movimento`), convertendo para datetime e preenchendo o campo `data_realizado`.
   - Extração do status mais recente do processo mapeado para a enumeração interna `StatusProcesso`.
   - Fallback mock configurável via variável de ambiente para desenvolvimento offline e pipelines de CI/CD.

2. **Rotina de Sincronização em Background (`app/processo/service.py`)**:
   - `ProcessoService.sincronizar_processos_com_api`: itera sobre processos cadastrados com CNJ válido e atualiza `status`, `tribunal` e `data_realizado`.
   - Tratamento de exceções com rollback transacional (`db.rollback()`) e logs estruturados em caso de falha.

3. **Endpoint Manual Sob Demanda (`POST /processos/sincronizar`)**:
   - Rota no controller de processos (`app/processo/controller.py`) permitindo disparo imediato da sincronização com o Datajud.
   - Protegido por autenticação JWT e controle de acesso baseado na permissão `editar_processos`.
   - Resposta padronizada informando o número de processos atualizados (`SincronizacaoResponse`).
   - Tratamento robusto de erros com retorno de status HTTP 500 e rollback em falhas inesperadas na comunicação ou persistência.

4. **Agendamento no Lifespan da Aplicação (`main.py`)**:
   - Inicialização do `AsyncIOScheduler` (APScheduler) configurado para executar a sincronização em intervalos regulares de 12 horas durante o ciclo de vida do FastAPI.

5. **Cobertura de Testes Automatizados**:
   - Testes unitários para o client Datajud (`app/core/tests/test_datajud_api.py`) cobrindo sanitização, identificação de tribunal, modo mock, requisição real com retorno de hits, ausência de hits, extração de dataHora e tratamento de falhas.
   - Testes unitários do job de sincronização (`app/processo/tests/test_sync_processos.py`).
   - Testes de integração do endpoint manual e controle de permissões (`app/processo/tests/test_processo_controller.py`).
   - Cobertura de testes mantida em **100%** de conformidade com os requisitos da disciplina.

---

## O que foi implementado no Frontend

1. **Modal de Detalhes do Processo (`ProcessDetailsModal.jsx`)**:
   - Estrutura em abas (**Resumo**, **Movimentações** e **Documentos**) com acessibilidade (`role="tablist"` e `role="tab"`), fiel ao protótipo do Figma.
   - Aba **Resumo**: grid detalhado exibindo informações consolidadas (Cliente, Tribunal, Responsável, Data de Início, Data de Realização / Última sincronização e Próximo Prazo).
   - Aba **Movimentações**: exibição das movimentações do processo acompanhadas do badge visual **DataJud**, identificando que o evento foi capturado diretamente da API pública do CNJ.
   - Aba **Documentos**: visualização de anexos do processo com suporte a estado vazio e botão de upload.

2. **Cobertura de Testes Unitários no Frontend (`ProcessDetailsModal.test.jsx`)**:
   - Testes unitários desenvolvidos com **Vitest** e **React Testing Library**.
   - Validação da renderização correta das informações do processo e fechamento do modal.
   - Validação da navegação entre as abas Resumo, Movimentações e Documentos e da exibição do badge visual **DataJud**.

---

## Configurações Necessárias

### 1. Variáveis de Ambiente (`.env`)
Configurações recomendadas no arquivo `.env` (ou `.env.local` / ambiente de produção):

```bash
# CONFIGURAÇÃO DATAJUD (CNJ):
DATAJUD_API_KEY=cDZHYzlZa0JadVREZDJCendQbXY6SkJlTzNjLV9TRENyQk1RdnFKZGRQdw==
DATAJUD_BASE_URL=https://api-publica.datajud.cnj.jus.br
DATAJUD_MOCK=false
```

> **Nota:** A chave pública padrão é mantida pelo CNJ. Caso o CNJ altere a chave, basta atualizá-la na variável `DATAJUD_API_KEY`. Para ambientes de teste/desenvolvimento sem acesso à internet, defina `DATAJUD_MOCK=true`.

### 2. Formato do CNJ nos Cadastros
Para que a consulta funcione corretamente no Datajud:
- O processo deve possuir o CNJ cadastrado no padrão de 20 dígitos numéricos (com ou sem formatação de pontos e traços, pois o client sanitiza antes da chamada).
- O número deve pertencer a um tribunal suportado pelo Datajud e pelo mapa de 38 tribunais configurado.
