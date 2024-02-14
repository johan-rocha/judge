#!/bin/bash

# Verifica se o número de argumentos é válido
if [ $# -ne 2 ]; then
    echo "Uso: $0 arquivo_entrada arquivo_saida"
    exit 1
fi

# Verifica se o arquivo de entrada existe
if [ ! -f "$1" ]; then
    echo "Arquivo de entrada não encontrado: $1"
    exit 1
fi

# Remover a quebra de linha e espaços adicionais, e adicionar uma vírgula após cada vírgula que não seja seguida de um colchete ou de uma chave
sed 's/,\([^{}]\)/,\n\1/g' "$1" > "$2"

echo "Conversão concluída. Verifique o arquivo de saída: $2"
