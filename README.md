# Documentação | Sistema de Gestão Jurídica

Bem-vindo ao repositório central de documentação da equipe 4 (TPPE-2026-2)! 

Este repositório armazena toda a especificação técnica, requisitos funcionais, arquitetura e documentação de apoio para a plataforma **Site Institucional + Sistema de Gestão Jurídica**.

A documentação é gerada estaticamente utilizando o [MkDocs](https://www.mkdocs.org/) em conjunto com o tema [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

## Como acessar o site

A documentação publicada (versão mais recente da branch `main`) está disponível no [GitHub Pages](https://tppe-2026-2-g4.github.io/advog-docs/).

---

## Como rodar o projeto localmente

Se você é desenvolvedor da equipe e necessita atualizar a documentação, siga os passos abaixo para preparar o seu ambiente local de desenvolvimento.

### Pré-requisitos
*   [uv](https://github.com/astral-sh/uv) (Gerenciador de pacotes e ambientes Python).
*   [make](https://www.gnu.org/software/make/) (automatiza a configuração e o build).

### Instalação e Execução

1.  **Clone este repositório:**
    ```bash
    git clone https://github.com/TPPE-2026-2-G4/advog-docs.git
    cd advog-docs
    ```

2.  **Configure o ambiente de desenvolvimento (recomendado):**
    ```bash
    make setup
    ```
    Este comando realiza, de uma só vez:
    *   Sincroniza as dependências exatas do ambiente (`uv sync`), criando e popula o ambiente virtual com base no `pyproject.toml` e no `uv.lock`.
    *   Instala os hooks do **pre-commit** (validação de Conventional Commits e build da documentação).
    *   Instala o hook `prepare-commit-msg`, que abre o assistente do **Commitizen** automaticamente ao commitar.

3.  **Inicie o servidor de desenvolvimento:**
    ```bash
    uv run mkdocs serve
    ```
    *O site estará disponível em `http://127.0.0.1:8000/`. Qualquer alteração nos arquivos Markdown será refletida no navegador instantaneamente (Live Reload).*

### Gerenciando Commits e Build

> **Importante:** neste projeto **não** é permitido usar `git commit -m "..."`. A mensagem de commit deve seguir o padrão **Conventional Commits**, montada pelo assistente do Commitizen.

*   **Realizar um commit:**
    ```bash
    git commit
    ```
    O hook `prepare-commit-msg` abrirá o assistente do Commitizen (`cz commit`) para você montar a mensagem de forma guiada.
*   **Validar a mensagem de commit:** (executada automaticamente pelo hook `commit-msg`):
    ```bash
    uv run cz check --commit-msg-file <arquivo_da_mensagem>
    ```
*   **Validar o build antes do push:** (executada automaticamente antes de cada `git push`):
    ```bash
    make build
    ```
    O alvo `build` executa `uv run mkdocs build --strict`, garantindo que a documentação compila sem erros e sem avisos.

---

## Estrutura do Repositório

*   `docs/`: Contém todos os arquivos em formato Markdown (`.md`) e imagens da documentação.
    *   `pages/`: Organização das páginas por área (visão do produto, documentação técnica e atas de reunião).
    *   `assets/`: Imagens e recursos visuais utilizados nas páginas.
    *   `stylesheets/`: Folhas de estilo customizadas (incluindo o tema Neoteroi).
*   `.github/workflows/`: Scripts de automação (CI/CD) do repositório.
    *   `deploy.yml`: Responsável por compilar e publicar o site no GitHub Pages ao atualizar a `main`.
    *   `prCheck.yml`: Executa o build estrito (`--strict`) e verifica links quebrados em Pull Requests.
*   `.github/ISSUE_TEMPLATE/`: Templates padronizados para abertura de issues de documentação.
*   `scripts/hooks/`: Hooks de git usados pelo pre-commit (validação de commit e de build).
*   `mkdocs.yml`: Arquivo central de configuração do site (temas, menu lateral, metadados).
*   `Makefile`: Automação de tarefas de desenvolvimento (`make setup` e `make build`).
*   `pyproject.toml`: Declaração de dependências do projeto e configuração do Commitizen.
*   `uv.lock` e `requirements.txt`: Bloqueio de versões exatas das dependências.
*   `.pre-commit-config.yaml`: Configuração dos hooks de pre-commit.
*   `.python-version`: Versão do Python utilizada no projeto (3.11).

---

## Fluxo de Contribuição (CI/CD)

A branch `main` deste repositório está **protegida**. Nenhuma alteração pode ser enviada diretamente para ela.

Para atualizar a documentação:
1.  Crie uma nova branch a partir da `main` (ex: `docs/modulos-crm`).
2.  Faça as alterações necessárias nos arquivos dentro da pasta `docs/`.
3.  Realize o **commit** usando o assistente do Commitizen (`git commit`) e faça o **push**. Os hooks locais validarão a mensagem (Conventional Commits) e o build da documentação antes do envio.
4.  Abra um **Pull Request (PR)**.
5.  Aguarde a execução automática dos *checks* (`prCheck.yml`):
    *   Validação de sintaxe e build estrito da documentação (`mkdocs build --strict`).
    *   Auditoria de links externos e internos (lychee).
6.  Após a aprovação, realize o Merge. O GitHub Actions publicará a nova versão no site automaticamente.
