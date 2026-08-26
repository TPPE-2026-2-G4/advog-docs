# Backlog do Produto

## Requisitos Funcionais

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
| US05 | EP02 | Visualizar calendário de pagamento (Dashboard) | Como advogado, quero visualizar os lançamentos financeiros em um calendário e receber notificações sobre vencimentos próximos para acompanhar compromissos financeiros do escritório. |
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

| Cód. | Descrição do Requisito |
| :--- | :--- |
| RQN01 | Dados pessoais e sensíveis (inclusive de saúde, comuns em processos previdenciários) devem ser tratados com base legal adequada, acesso restrito por perfil e política de retenção definida. |
| RQN02 | Sistema acessível via navegador, sem necessidade de instalação local; meta inicial de disponibilidade compatível com um ambiente de baixo custo. |
