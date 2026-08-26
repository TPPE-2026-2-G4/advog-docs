#!/usr/bin/env bash
set -euo pipefail

COMMIT_MSG_FILE="$1"

if ! uv run cz check --commit-msg-file "$COMMIT_MSG_FILE"; then
  echo ""
  echo "❌ Mensagem de commit inválida."
  echo "   Corrija os pontos indicados acima."
  echo ""
  exit 1
fi

echo ""
echo "✅ Mensagem de commit validada!"
echo ""
