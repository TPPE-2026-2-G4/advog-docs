# Documentação: Sistema de Gestão Jurídica

Bem-vindo ao repositório central de documentação da equipe 4 (TPPE-2026-2)! 

Este repositório armazena toda a especificação técnica, requisitos funcionais, arquitetura e documentação de apoio para a plataforma **Site Institucional + Sistema de Gestão Jurídica**.

A documentação é gerada estaticamente utilizando o [MkDocs](https://www.mkdocs.org/) em conjunto com o tema [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/).

## Como acessar o site

A documentação publicada (versão mais recente da branch `main`) está disponível no [GitHub Pages](https://tppe-2026-2-g4.github.io/advog-docs/).

---

## Como rodar o projeto localmente

Se você é desenvolvedor da equipe necessita atualizar a documentação, siga os passos abaixo para preparar o seu ambiente local de desenvolvimento.

### Pré-requisitos
*   [uv](https://github.com/astral-sh/uv) (Gerenciador de pacotes e ambientes Python).

### Instalação e Execução

1.  **Clone este repositório:**
    ```bash
    git clone https://github.com/TPPE-2026-2-G4/advog-docs.git
    cd advog-docs
    ```

2.  **Crie e ative o ambiente virtual (isolamento):**
    ```bash
    uv venv
    # Se estiver usando Bash/Zsh:
    source .venv/bin/activate
    # Ou se estiver usando Fish (Davi e Daniel):
    # source .venv/bin/activate.fish
    ```

3.  **Instale as dependências exatas (MkDocs e plugins):**
    ```bash
    uv pip install -r requirements.txt
    ```

4.  **Inicie o servidor de desenvolvimento:**
    ```bash
    mkdocs serve
    ```
    *O site estará disponível em `http://127.0.0.1:8000/`. Qualquer alteração nos arquivos Markdown será refletida no navegador instantaneamente (Live Reload).*

---

## Estrutura do Repositório

*   `docs/`: Contém todos os arquivos em formato Markdown (`.md`) e imagens da documentação.
*   `.github/workflows/`: Scripts de automação (CI/CD) do repositório.
    *   `deploy.yml`: Responsável por compilar e publicar o site no GitHub Pages ao atualizar a `main`.
    *   `prCheck.yml`: Executa linting e verifica links quebrados em Pull Requests.
*   `mkdocs.yml`: Arquivo central de configuração do site (temas, menu lateral, metadados).
*   `requirements.txt`: Lista estrita de pacotes necessários para o projeto rodar.

---

## Fluxo de Contribuição (CI/CD)

A branch `main` deste repositório está **protegida**. Nenhuma alteração pode ser enviada diretamente para ela.

Para atualizar a documentação:
1.  Crie uma nova branch a partir da `main` (ex: `docs/modulos-crm`).
2.  Faça as alterações necessárias nos arquivos dentro da pasta `docs/`.
3.  Abra um **Pull Request (PR)**.
4.  Aguarde a execução automática dos *checks* (`prCheck.yml`):
    *   Validação de sintaxe e quebra de build.
    *   Verificação de padronização do texto (Markdown Linting).
    *   Auditoria de links externos e internos.
5.  Após a aprovação, realize o Merge. O GitHub Actions publicará a nova versão no site automaticamente.