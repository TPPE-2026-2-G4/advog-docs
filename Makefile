help:
	@echo "Comandos disponíveis:"
	@echo " make setup                            # Configura o ambiente de desenvolvimento"
	@echo " make build                            # Compila o projeto"

setup:
	@echo "\n\n ⚙️ Configurando o ambiente de desenvolvimento... \n"
	uv sync
	uv run pre-commit install --hook-type commit-msg --hook-type pre-push
	install -m 755 scripts/hooks/prepare-commit-msg.sh "$$(git rev-parse --git-path hooks/prepare-commit-msg)"
	@echo "\n\n✅ Ambiente de desenvolvimento configurado com sucesso! \n"

build:
	@echo "\n\n🏗️ Compilando o projeto... \n"
	uv run mkdocs build --strict