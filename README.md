<<<<<<< HEAD
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

=======
# Álgebra Linear - Um Livro Colaborativo

Este é um livro colaborativo sobre álgebra linear.

_Fork us on GitHub!_ O código fonte do livro está disponível no repositório GitHub https://github.com/reamat/AlgebraLinear.

Para entrar em contato com os organizadores, envie um e-mail para reamat@ufrgs.br. Ainda, você pode abrir um _issue_ no [repositório do projeto](https://github.com/reamat/AlgebraLinear) ou postar no [fórum](https://www.ufrgs.br/reamat/forum.html) do projeto REAMAT.

## Colaborações

Há várias maneiras de colaborar com a escrita do livro. Toda a colaboração é bem vinda, seja ela um aviso de erro de digitação, uma reformulação de uma parte do livro, uma nova figura, uma nova seção ou um novo capítulo.

Veja como colaborar em https://www.ufrgs.br/reamat/participe.html

Antes de nos enviar uma colaboração, por favor, verifique se ela está de acordo com a folha de estilo do livro (https://github.com/reamat/Docs/blob/master/livro/FOLHA_DE_ESTILO.md).

## Licença

Este trabalho está licenciado sob a Licença Creative Commons Atribuição-CompartilhaIgual 3.0 Não Adaptada. Para ver uma cópia desta licença, visite <https://creativecommons.org/licenses/by-sa/3.0/> ou envie uma carta para Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.

### Aviso de violação de _copyright_

Caso encontre alguma violação de _copyright_ em qualquer parte do material, por favor, nos informe pelo e-mail:

reamat@ufrgs.br,

abra um _issue_ no repositório GitHub do material ou, ainda, poste no nosso fórum:

https://www.ufrgs.br/reamat/forum.

Iremos cuidar para analisar seu aviso o mais prontamente possível e removeremos o material que não esteja de acordo com a licença [CC-BY-SA 3.0](https://creativecommons.org/licenses/by-sa/3.0/).

## Sobre o código fonte

O código fonte está escrito em [Latex](https://latex-project.org/) e as referências bibliográficas em [BibTex](http://www.bibtex.org/), testado em computador Linux com o pacote [TexLive](http://www.tug.org/texlive/). O texto está em formatação **utf-8**.

## Compilando

### Em computador Linux

O código LaTeX está testado em computador [Linux](https://pt.wikipedia.org/wiki/Linux) com o pacote [TexLive](https://www.tug.org/texlive/) instalado. O livro pode ser compilado com:

    $ make

Isto gera o livro em formato PDF (main.pdf). Alguma vezes a compilação pode gerar erros devido a incompatibilidade com antigos arquivos temporários. Para limpar os arquivos temporários gerados durante a compilação, digite:

    $ make clean

Alternativamente, o livro pode ser compilado com os comandos usuais `latex main`, `bibtex main`, `pdflatex main`, `makeindex main`. Lembrando que `main.tex` é o arquivo LaTeX principal.

#### Formato HTML

O livro também pode ser compilado em formato HTML digitando:

	$ make html

### Outros sistemas operacionais

O código LaTeX pode ser compilado em outros sistemas operacionais.

Em primeiro lugar, deve-se editar o arquivo de configuração `config.knd`. Este arquivo contém instruções TeX para controlar o formato do livro. Por exemplo, para setar o formato do livro em PDF, garanta que este arquivo contenha o seguinte texto:

    \ispdftrue \ishtmlfalse

Por fim, o livro pode ser compilado com a seguinte sequência de comandos:

    pdflatex main
    pdflatex main
    pdflatex main
>>>>>>> 5edaf56301b741a287f51829dd7dc48a322ecb58
