# Estrutura de Pastas
Para executar o judge.sh, é necessário que a estrutura de pastas esteja organizada da seguinte forma:

judge/

│
├── Submissions/

│   ├── file.c
│
├── ExpectedOutput/

│   ├── output.txt
│
└── Judge/

    ├── judge.sh

- Submissions/: Pasta onde os arquivos de submissão dos usuários são armazenados. Cada arquivo deve ser único e deve estar no formato .c.
- ExpectedOutput/: Pasta que pode conter os arquivos de saída esperada para cada questão.
- Judge/: Pasta onde está localizado o script judge.sh, responsável por realizar a avaliação das submissões.

## Funcionamento do judge.sh
O script judge.sh executa o julgamento das submissões de acordo com os seguintes passos:

1. Entrar na pasta de submissões: O script navega até a pasta onde os arquivos de submissão estão localizados.

2. Verificação do arquivo de submissão: Caso exista apenas um arquivo .c dentro da pasta de submissões, uma mensagem indicando que o arquivo de submissão foi encontrado é exibida.

3. Compilação do arquivo de submissão: O script compila o arquivo .c encontrado na pasta de submissão.

4. Comparação de saídas: Após a compilação, o script compara a saída gerada pela compilação com a saída esperada, que pode estar localizada na pasta ExpectedOutput/.

5. Resultado do julgamento: Se a saída gerada pela compilação é idêntica à saída esperada, o script imprime na tela a mensagem "Accepted", indicando que a submissão foi aceita.

6. Caso a saída seja divergente, o programa imprime "Wrong Answer" no terminal.
