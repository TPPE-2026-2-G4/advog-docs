# Integração com API do Datajud (CNJ) - US19

## Visão Geral
A funcionalidade de atualização automática de processos (**US19**) tem como objetivo consultar periodicamente dados públicos dos tribunais para manter a situação, tribunal e datas dos processos sincronizadas no sistema sem intervenção humana manual.

Inicialmente concebida para utilizar uma API como Jusbrasil, a solução foi direcionada para a **API Pública do Datajud (Conselho Nacional de Justiça - CNJ)** por ser **gratuita, oficial e pública**.

---

## O que foi implementado no Backend

1. **Cliente HTTP Assíncrono do Datajud (`app/utils/datajud_api.py`)**:
   - Sanitização e validação de CNJ (20 dígitos).
   - Extração automática da sigla/alias do tribunal a partir do padrão nacional de numeração (`NNNNNNN-DD.AAAA.J.TR.OOOO`, onde `J.TR` mapeia o segmento e tribunal: e.g., `8.26` -> TJSP, `4.01` -> TRF1, etc.).
   - Requisição `POST` com consulta Elasticsearch DSL (`match: { "numeroProcesso": ... }`) no endpoint específico do tribunal (`/api_publica_{tribunal}/_search`).
   - Autenticação via header `Authorization: ApiKey <CHAVE_PUBLICA_CNJ>`.
   - Extração do status mais recente do processo a partir da lista de `movimentos` (`dadosBasicos.movimento`).
   - Fallback mock configurável para desenvolvimento offline e pipelines de CI/CD.

2. **Rotina de Sincronização em Background (`app/processo/service.py`)**:
   - `ProcessoService.sincronizar_processos_com_api`: itera sobre processos cadastrados com CNJ válido e atualiza `status`, `tribunal` e `data_realizado`.

3. **Agendamento no Lifespan da Aplicação (`main.py`)**:
   - Inicialização do `AsyncIOScheduler` (APScheduler) configurado para executar a sincronização em intervalos regulares (a cada 12 horas) durante o ciclo de vida do FastAPI.

4. **Cobertura de Testes Automatizados**:
   - Testes unitários para o client Datajud (`tests/unit/utils/test_datajud_api.py`) cobrindo sanitização, identificação de tribunal, modo mock, requisição real com retorno de hits, ausência de hits, status padrão e tratamento de falhas.
   - Testes unitários do job de sincronização (`tests/unit/services/test_sync_processos.py`).
   - Cobertura de testes mantida em **100%** de conformidade com os requisitos da disciplina.

---

## O que precisa mudar / Configurações Necessárias

### 1. Variáveis de Ambiente (`.env`)
Adicionar no arquivo `.env` (ou `.env.local` / ambiente de produção):

```bash
# CONFIGURAÇÃO DATAJUD (CNJ):
DATAJUD_API_KEY=cDZHYzlZa0JadVREZDJCendQbXY6SkJlTzNjLV9TRENyQk1RdnFKZGRQdw==
DATAJUD_BASE_URL=https://api-publica.datajud.cnj.jus.br
DATAJUD_MOCK=false
```

> **Nota:** A chave pública padrão é mantida pelo CNJ e pública. Caso o CNJ altere a chave, basta atualizá-la na variável `DATAJUD_API_KEY`. Para ambientes de teste/desenvolvimento sem acesso à internet, defina `DATAJUD_MOCK=true`.

### 2. Formato do CNJ nos Cadastros
Para que a consulta funcione corretamente no Datajud:
- O processo deve possuir o CNJ cadastrado no padrão de 20 dígitos numéricos (com ou sem formatação de pontos e traços, pois o client sanitiza antes da chamada).
- O número deve pertencer a um tribunal suportado pelo Datajud e pelo mapa de tribunais configurado.

### 3. Futuras Adaptações no Frontend (quando for implementar a parte Web)
- Exibir badge ou indicação visual de "Última atualização automática via Datajud" utilizando o campo `data_realizado`.
- Botão manual opcional "Sincronizar agora" caso o usuário queira forçar a busca de um processo específico imediatamente.
