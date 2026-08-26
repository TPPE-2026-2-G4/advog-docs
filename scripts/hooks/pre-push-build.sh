#!/usr/bin/env bash
set -euo pipefail

if ! make build; then
  echo ""
  echo "❌ Erro de build! Corrija os erros e tente novamente."
  echo ""
  exit 1
fi

echo ""
echo "✅ Compilação realizada com sucesso!"
echo ""
