#!/usr/bin/env bash
# Equivalente ao .husky/pre-push do advog-web: garante que a
# documentação builda antes de permitir o push.
set -euo pipefail

echo ""
echo "🏗️  Tentando fazer build antes do push..."
echo ""

if ! make build; then
  echo ""
  echo "❌ Erro de build! Corrija os erros e tente novamente."
  echo ""
  exit 1
fi

echo ""
echo "✅ Build realizado! Continuando com o seu push..."
echo ""
