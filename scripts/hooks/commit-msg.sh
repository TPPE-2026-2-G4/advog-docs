#!/usr/bin/env bash
# Equivalente ao .husky/commit-msg do advog-web (que usa commitlint):
# aqui quem valida o Conventional Commits é o "cz check" do Commitizen.
set -euo pipefail

COMMIT_MSG_FILE="$1"

echo ""
echo "🔎 Validando mensagem de commit (Conventional Commits)..."
echo ""

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
