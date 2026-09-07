#!/usr/bin/env bash
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
