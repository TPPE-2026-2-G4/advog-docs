# Backlog do Produto

## Backlog Geral

O **backlog de produto** é uma lista dinâmica e priorizada que contém todos os requisitos, funcionalidades, melhorias e correções que serão necessárias para o desenvolvimento de um produto. Ele funciona como um guia para a equipe de desenvolvimento, servindo de referência para todas as tarefas que precisam ser realizadas ao longo do ciclo de vida do projeto. Essa lista não é fixa, mas sim atualizável conforme o produto evolui e novas necessidades surgem, garantindo que o time esteja sempre alinhado às prioridades e expectativas do projeto.

Em resumo, os **Requisitos Funcionais** são detalhados por meio das histórias de usuário, que são escritas no formato "Eu como (agente), gostaria de (ação), para que (agregação de valor)".

Dentro do backlog, um dos principais elementos são as **User Stories (US)**, ou histórias de usuário. As histórias de usuário descrevem, em uma linguagem simples e direta, as necessidades do usuário final de forma que todos da equipe possam compreender o valor de cada funcionalidade. Elas são compostas por três elementos principais: quem é o usuário, o que ele deseja fazer e qual o benefício dessa ação. Esse formato ajuda a manter o foco nas necessidades dos usuários, incentivando a equipe a desenvolver soluções que realmente agreguem valor ao produto.

As User Stories mais complexas ou que englobam várias funcionalidades estão agrupadas em **Épicos**. Um épico é uma descrição ampla de uma necessidade maior, que será posteriormente dividida em histórias menores e mais detalhadas. Esse processo de desmembramento ajuda a equipe a compreender o escopo do projeto e a definir prioridades para desenvolver partes do produto em blocos mais manejáveis. Épicos podem ser definidos com base nas principais funcionalidades ou objetivos do produto, e cada um pode se desdobrar em várias histórias de usuário que detalham as tarefas específicas.

Por sua vez, os **Temas** funcionam como agrupamentos de histórias e épicos que compartilham um propósito ou um objetivo comum dentro do produto. Eles são úteis para organizar o backlog em seções que representem áreas ou funcionalidades do sistema, facilitando a priorização de desenvolvimento de acordo com as metas do projeto. Diferente dos épicos, que normalmente possuem um escopo mais restrito, os temas são mais amplos e podem abranger múltiplos épicos e histórias de usuário, fornecendo uma visão geral das grandes áreas do produto.

### Temas

| Cód. | Nome do Tema | Descrição |
| :--- | :--- | :--- |
| TM01 | Gestão de Negócio | Parte privada do sistema responsável por gerenciar processos e parte do conteúdo do site institucional. |
| TM02 | Software Institucional | Parte do sistema público e acessível aos clientes. |

### Épicos

| Cód. | Tema Assoc. | Título do Épico | User Story |
| :--- | :--- | :--- | :--- |
| EP01 | TM01 | Administração da Conta | Como administrador, quero ser capaz de controlar o acesso ao painel administrativo somente às pessoas autorizadas para manter os dados seguros. |
| EP02 | TM01 | Controle Financeiro | Como advogado, quero ser capaz de visualizar e atualizar dados financeiros da advocacia para fiscalizar entradas e saídas. |
| EP03 | TM01 | Gestão de Atividades | Como advogado, quero ser capaz de gerenciar e acompanhar o andamento das atividades da advocacia para não perder prazos e planejamento. |
| EP04 | TM01 | Gestão de Processos | Como advogado, quero ser capaz de documentar e acompanhar processos em andamento na advocacia para centralizar os artefatos do processo. |
| EP05 | TM02 | Personalização da Página | Como administrador, quero ser capaz de atualizar informações do site institucional para manter os dados atualizados. |
| EP06 | TM02 | Gestão de Clientes | Como cliente, quero ser capaz de me comunicar e interagir com a advocacia para prosseguir com o serviço do escritório. |

### Histórias de Usuários

| Cód. | Épico Assc. | Título do Requisito | User Story |
| :--- | :--- | :--- | :--- |
| US01 | EP01 | Controlar Acesso | Como administrador, quero ser capaz de cadastrar e revogar um usuário no sistema, para que eu possa controlar a entrada à área privada do sistema. |
| US02 | EP01 | Credenciar Usuário | Como advogado ou estagiário, quero ser capaz de fazer login com meu email empresarial e senha, para que eu possa acessar as funções da área privada do sistema. |
| US03 | EP01 | Controlar Permissão | Como administrador, quero restringir os direitos de interação da área privada entre os diferentes perfis disponíveis para manter a segurança de utilização. |
| US04 | EP02 | Registrar Dados de Finanças | Como usuário autorizado, quero registrar manualmente lançamentos financeiros, para controlar pagamentos e recebimentos do escritório. |
| US05 | EP02 | Visualizar calendário de pagamento | Como advogado, quero visualizar os lançamentos financeiros em um calendário e receber notificações sobre vencimentos próximos para acompanhar compromissos financeiros do escritório. |
| US06 | EP02 | Visualizar gráfico de entradas e saídas financeira (Dashboard) | Como advogado, quero visualizar e filtrar por dias ou valores em um gráfico de entradas e saídas para acompanhar o movimento financeiro da advocacia. |
| US07 | EP02 | Visualizar planejamento de pagamentos (Dashboard) | Como advogado, quero visualizar e filtrar, por um determinado período de tempo configurável, pagamentos previstos, feitos e em atrasos, para tomar decisões estratégicas. |
| US08 | EP03 | Gerenciar Atividades | Como usuário autorizado, quero criar, adicionar detalhes e apagar ATIVIDADES da advocacia, para delegar as atribuições atuais do escritório. |
| US09 | EP03 | Filtrar Atividades | Como advogado, quero filtrar e pesquisar por propriedades de atividades específicas para achar atividades de meu interesse mais rápido. |
| US10 | EP03 | Visualizar KanBan de Atividades | Como usuário autorizado, quero visualizar e interagir com as atividades registradas no sistema em formato KanBan, para acompanhar o progresso das atividades. |
| US11 | EP03 | Visualizar dados de produtividade da equipe (Dashboard) | Como advogado, quero visualizar dados de produtividade da equipe com relação às interações das atividades para analisar o serviço dos meus advogados. |
| US12 | EP03 | Visualizar revisão geral do estado das atividades (Dashboard) | Como advogado, quero visualizar uma revisão geral da quantidade de atividades pendentes, concluídas e atrasadas para tomar decisões estratégicas. |
| US13 | EP04 | Gerenciar Processos | Como usuário autorizado, quero criar, adicionar detalhes e apagar PROCESSOS da advocacia, para centralizar os dados em um único local. |
| US14 | EP04 | Filtrar Processos | Como advogado, quero filtrar ou buscar por propriedades de um processo específico para achar o processo de meu interesse mais facilmente. |
| US15 | EP04 | Visualizar resumo geral de processos (Dashboard) | Como advogado, quero visualizar um resumo geral de processos em andamento, com etapas em atrasos e finalizados para tomar decisões estratégicas. |
| US16 | EP04 | Visualizar lista de processos em estado crítico (Dashboard) | Como advogado, quero visualizar uma lista gerada automaticamente pelo sistema com os processos sem registro de movimentação recente para não perder prazos. |
| US17 | EP04 | Exportar Relatórios | Como usuário autorizado, quero exportar relatórios em PDF e/ou planilha (CSV, Excel) dos processos e dos dados dos clientes para que eu possa compartilhar os dados em outros formatos. |
| US18 | EP04 | Realizar upload de documentos | Como usuário autorizado, quero ser capaz de fazer o upload de documentos processuais e/ou vinculados a um cliente para que eu possa manter os dados atualizados. |
| US19 | EP04 | Atualizar dados de processo automaticamente | Como advogado, quero que o sistema atualize os dados do processo automaticamente por captura de API pública de forma recorrente para que os dados se mantenham atualizados sem a intervenção humana. |
| US20 | EP05 | Editar Institucional | Como administrador, quero ser capaz de editar informações da página web institucional como cores, logotipo, textos e imagens, para que eu possa manter meu site sempre atualizado. |
| US21 | EP06 | Solicitar Serviço | Como cliente, quero ser capaz de preencher e enviar um formulário de solicitação de serviço, para que o escritório receba meu pedido e possa iniciar o meu atendimento. |
| US22 | EP06 | Visualizar clientes | Como advogado, quero ser capaz de visualizar uma lista com os dados dos clientes que já entraram em contato em algum momento, para que eu possa consultar suas informações de contato. |
| US23 | EP06 | Visualizar Etapas dos Clientes (CRM) | Como advogado, quero visualizar meus clientes organizados em um quadro visual por etapas de negociação, para que eu possa saber quem é o responsável por cada cliente, acompanhar o progresso de cada atendimento e saber exatamente quem precisa de retorno. |

## Requisitos Não Funcionais

Os **requisitos não funcionais** foram organizados com base no modelo **URPS+**, que classifica esses requisitos em categorias que abrangem Usabilidade, Confiabilidade, Desempenho, Suportabilidade e outras restrições relevantes (identidade visual, segurança, conformidade legal e limites de escopo do projeto). Esse sistema facilita a análise e priorização das características que impactam na qualidade geral do software, além de assegurar que ele atenda aos padrões esperados pelo cliente e pelos usuários. A dor central relatada pelo cliente — o risco de perda de prazos processuais, que pode levar à revelia — reforça a importância de tratar confiabilidade e desempenho como categorias críticas, e não apenas os requisitos funcionais de gestão de prazos.

### Usabilidade

| Cód. | Descrição do Requisito |
| :--- | :--- |
| RQN01 | O sistema deve seguir o princípio de Mobile First: toda tela deve ser projetada primeiro para largura mínima de 360px, sendo então adaptada para tablet (≥768px) e desktop (≥1024px). |
| RQN02 | A interface deve ser responsiva em todas as resoluções entre 360px e 1920px de largura, sem gerar rolagem horizontal e sem ocultar ou quebrar nenhuma funcionalidade nas telas testadas. |
| RQN03 | Deve existir uma página estática, acessível sem autenticação, apresentando o escritório de advocacia (apresentação institucional e áreas de atuação). |
| RQN04 | Deve existir uma página estática, acessível sem autenticação, apresentando os advogados do escritório (nome, foto e área de atuação de cada integrante). |
| RQN05 | Deve existir uma página estática, acessível sem autenticação, contando a história do escritório de advocacia. |

### Confiabilidade

| Cód. | Descrição do Requisito |
| :--- | :--- |
| RQN06 | Falhas ou indisponibilidade das integrações externas (DataJud, diários oficiais) não podem derrubar o restante do sistema: em 100% dos casos de erro externo, as demais funcionalidades devem permanecer operacionais e o erro deve ser registrado em log em até 5 segundos. |
| RQN07 | 0% de perda de dados confirmados: toda transação de lançamento financeiro, processo, tarefa ou prazo, uma vez salva com sucesso, deve permanecer íntegra no banco, com rotina de backup diária e retenção mínima de 30 dias. |
| RQN08 | O cálculo automático de prazos processuais deve apresentar 0 (zero) dias de divergência em relação à regra de contagem configurada, validado por suíte de testes automatizados cobrindo 100% das regras cadastradas. |

### Desempenho

| Cód. | Descrição do Requisito |
| :--- | :--- |
| RQN09 | O sistema deve ser acessível via navegador, sem instalação local, com meta inicial de disponibilidade (uptime) de 95% ao mês, compatível com um ambiente de hospedagem de baixo custo. |
| RQN10 | Listagens, filtros e dashboards (financeiro, operacional, de atividades e de processos) devem carregar em até 3 segundos para uma base de até 10.000 registros, em condições normais de rede. |
| RQN11 | Notificações de vencimento de prazos processuais e financeiros devem ser geradas com no mínimo 3 dias de antecedência (prazo configurável) e novamente no próprio dia do vencimento. |

### Suportabilidade

| Cód. | Descrição do Requisito |
| :--- | :--- |
| RQN12 | O sistema deve seguir uma arquitetura em camadas (apresentação, negócio e dados) sem dependências circulares entre camadas, permitindo que cada camada seja testada de forma isolada. |
| RQN13 | O código-fonte deve ser validado por ferramentas de lint no pipeline de CI, com 0 (zero) erros bloqueantes tolerados antes do merge em qualquer branch principal. |
| RQN14 | O sistema deve possuir cobertura mínima de 95% de testes automatizados (unitários e de integração parametrizados), medida por ferramenta de cobertura no pipeline de CI, com o build bloqueado caso o percentual fique abaixo desse limite. |
| RQN15 | O sistema deve possuir testes end-to-end com Selenium cobrindo 100% dos fluxos críticos (login, cadastro de processo, cadastro de prazo e lançamento financeiro), executados a cada merge nas branches principais. |

### + (Restrições Adicionais)

| Cód. | Descrição do Requisito |
| :--- | :--- |
| RQN16 | Dados pessoais e sensíveis (inclusive de saúde, comuns em processos previdenciários) devem ter acesso restrito por perfil (RBAC). |
| RQN17 | 100% das requisições entre cliente e servidor devem trafegar via HTTPS (TLS 1.2 ou superior); nenhuma rota deve responder em HTTP puro. |
| RQN18 | Senhas de usuários devem ser armazenadas com algoritmo de hash de custo configurável, sendo 0% delas armazenadas em texto plano. |


</br>
</br>

---
## Histórico de Versão da Página

::timeline::

- title: v1.0
  sub_title: 26/08/2026
  content: Criação do documento e escrita de requisitos por [Pedro Miguel](https://github.com/pedroMADBR).
  icon: ':material-file-document-plus-outline:'
- title: v1.1
  sub_title: 28/08/2026
  content: Correção na numeração dos Requisitos Não Funcionais por [Davi Camilo](https://github.com/Davicamilo23).
  icon: ':material-file-edit-outline:'

::/timeline::