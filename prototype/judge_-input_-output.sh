#!/bin/bash
# https://ce.judge0.com/#information


# Número de vezes que o programa será executado
NUM_EXECUCOES=10

# Caminho para o programa que será testado
PROGRAMA="make run"

# Inicializa a variável para armazenar o tempo total
TEMPO_TOTAL=0

# Loop para executar o programa várias vezes
for ((i=1; i<=$NUM_EXECUCOES; i++))
do
    # Executa o programa e mede o tempo de execução
    TEMPO_EXECUCAO=$( { time -p $PROGRAMA >/dev/null; } 2>&1 | awk '/real/ { print $2 }' )

    # Adiciona o tempo de execução ao tempo total
    TEMPO_TOTAL=$(echo $TEMPO_TOTAL + $TEMPO_EXECUCAO | bc)
done

# Calcula o tempo médio de execução
TEMPO_MEDIO=$(echo "scale=4; $TEMPO_TOTAL / $NUM_EXECUCOES" | bc)

# Exibe o tempo médio de execução
echo "Tempo médio de execução: $TEMPO_MEDIO segundos"
