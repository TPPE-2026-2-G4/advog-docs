#!/usr/bin/env bash
# Equivalente ao .husky/prepare-commit-msg do advog-web, mas via
# Commitizen (Python) em vez de cz-cli (Node).
#
# Instalado como hook NATIVO do git (não gerenciado pelo pre-commit): o
# runner do pre-commit captura stdin/stdout do hook num buffer e só
# imprime tudo depois que o processo termina, o que quebra o assistente
# interativo do Commitizen (parece travado). Rodando como hook nativo,
# git chama este script do jeito de sempre: $1=arquivo da mensagem,
# $2=origem da mensagem, $3=SHA (em amend).
set -euo pipefail

COMMIT_MSG_FILE="$1"
COMMIT_SOURCE="${2:-}"

if [ "$COMMIT_SOURCE" = "message" ]; then
  echo ""
  echo "🚫 Commits com 'git commit -m \"...\"' não são permitidos neste projeto."
  echo "   Rode 'git commit' (sem -m) para abrir o assistente do Commitizen."
  echo ""
  exit 1
fi

if [ -z "$COMMIT_SOURCE" ]; then
  echo ""
  echo "📝 Abrindo o assistente do Commitizen para montar sua mensagem de commit..."
  echo ""
  exec < /dev/tty
  uv run cz commit --write-message-to-file "$COMMIT_MSG_FILE" --dry-run
fi
