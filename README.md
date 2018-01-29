# Álgebra Linear - Um Livro Colaborativo

Este é um projeto de escrita colaborativa de um livro sobre tópicos de Álgebra Linear.

Caso queira queira colaborar, entre em contato com os organizadores do livro através da lista de e-mails:

<livro_colaborativo@googlegroups.com>

Também, o [repositório GitHub público do livro](https://github.com/livroscolaborativos/AlgebraLinear) conta com ferramentas de comunicação com os organizadores. Alternativamente, você pode enviar e-mail privado para:

<livroscolaborativos@gmail.com>

## Licença

Este trabalho está licenciado sob a Licença Creative Commons Atribuição-CompartilhaIgual 3.0 Não Adaptada. Para ver uma cópia desta licença, visite <http://creativecommons.org/licenses/by-sa/3.0/> ou envie uma carta para Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

### Aviso de violação de copyright

Caso encontre qualquer violação de copyright em qualquer parte do material do livro, por favor, nos informe pelo e-mail:

<livroscolaborativos@gmail.com>

ou pela lista de e-mails:

<https://groups.google.com/forum/#!forum/livro_colaborativo>.

Iremos cuidar para analisar seu aviso o mais prontamente possível e removeremos o material que não esteja de acordo com a licença [CC-BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/).

## Compilação

O livro está escrito em linguagem de marcação [LaTeX](http://www.latex-project.org/).

### Formato PDF

Antes de compilar o livro, certifique-se que o arquivo `config.knd` contém exatamente o texto:

      \ispdftrue \ishtmlfalse

Então, para compilar o livro basta executar:

    pdflatex livro.tex
    pdflatex livro.tex
    pdflatex livro.tex

Isto gera o arquivo `livro.pdf` com a versão completa do livro no formato PDF. Alternativamente, cada capítulo pode compilado separadamente.

### Formato HTML

Antes de compilar o livro, certifique-se que o arquivo `config.knd` contém exatamente o texto:

      \ispdffalse \ishtmltrue

Então, crie uma pasta `html` no diretório principal do livro e compile-o com a seguinte sequência de comandos:

       latex livro
       latex livro
       latex livro
       mk4ht htlatex livro "myconfig,3,notoc*" "" "-d./html/"

### Sistema Linux

No Linux é possível usar o `Makefile` para compiar o livro:

* Formato PDF:

        $ make

* Formato HTML

        $ make html

