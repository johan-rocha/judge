#!/bin/bash

folder_submissions="../Submissions"

cd "$folder_submissions" || exit 1

file=$(ls | grep '\.c$')

if [ "$(echo $file | wc -w)" -eq 1 ]; then
    echo "Arquivo de submissão encontrado: $file"

    executable="compiled"
    gcc "$file" -o "$executable"
    

    if [ $? -ne 0 ]; then
        echo "Compilation Error."
        exit 1
    else
        echo "Compilação bem-sucedida. Executando o programa..."
        
        output_program=$(./"$executable")

        folder_output="../ExpectedOutput"

        output_expected=$(cat "$folder_output/output.txt")

        
        if [ "$output_program" = "$output_expected" ]; then
            echo "Accepted"
            echo "$output_program"
        else
            echo "Wrong Answer"
        fi
    fi
else
    echo "Nenhum arquivo .c encontrado ou mais de um arquivo encontrado na mesma pasta"
fi
