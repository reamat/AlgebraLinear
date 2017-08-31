﻿# Folha de estilo

Este documento contém informações sobre os padrões de estilo de escrita e organização do livro colaborativo. Antes de submeter uma colaboração, verifique que seu trabalho está de acordo com todos os pontos observados nesta folha de estilo.

Estamos muito mais interessados em melhorar o conteúdo do livro (tando em qualidade como em quantidade) e menos interessados em melhorar a sua estética. Portanto, busque manter o código LaTeX o mais simples possível buscando potencializar a colaboração de outras pessoas e de forma a se obter um resultado que permita uma leitura objetiva e agradável do livro.

Qualquer dúvida, escreva em nossa lista de discussão:

<livro_colaborativo@googlegroups.com>

Também, o [repositório GitHub do livro](http://github.com/livroscolaborativos/AlgebraLinear) contém ferramentas de comunicação com os organizadores, bem como, é possível contatar os organizadores de forma privada através do e-mail:

<livroscolaborativos@gmail.com>


## Regionalização e Estilo de Escrita

O livro está escrito em língua portuguesa, seguindo os costumes linguísticos brasileiros. Dá-se prioridade à ortografia prevista no Acordo Ortográfico de 1990.

### Capitalização de nomes de métodos

Deve-se usar maiúscula apenas em nomes próprios, ex: método de Newton, métodos dos mínimos quadrados.


## Código fonte LaTeX

O livro está escrito em [LaTex](https://latex-project.org/) e os tópicos estão organizados por semanas letivas.

Para informações sobre como compilar o código fonte, leia o arquivo `README.md`.

### Compatibilidade

O código LaTeX do livro deve permitir sua compilação tanto com `latex` como com `pdflatex`.

#### Instruções LaTeX não compatíveis

Fazemos a conversão do livro de código LaTeX para HTML usando o pacote [TeX4ht](https://www.tug.org/tex4ht/). Os ambientes matemáticos são convertidos para [MathMl](https://www.w3.org/Math/) e então renderizados usando [MathJax](https://www.mathjax.org/). Para que a conversão funcione de forma apropriada deve-se observar as seguintes questões:

* Não usar o ambiente `align`: no lugar use o ambiente `eqnarray` ou o `split` dentro de um ambiente `equation`.

* Não usar `array` para composição de tabelas. A alternativa é usar o ambiente `tabular`, por exemplo:

        \begin{center}
	  \begin{tabular}{r|c|c}
	    $h$ & $Df(1)$ & $|f'(1) - D_{+,h}F(1)|$ \\ \hline
            $10^{-1}$ & $-8,67062\E-01$ & $2,55909\E-02$\\
            $10^{-2}$ & $-8,44158\E-01$ & $2,68746\E-03$\\
            $10^{-14}$ & $-8,43769\E-01$ & $2,29851\E-03$ \\\hline
	  \end{tabular}
	\end{center}

* Não colocar `label` dentro de colchetes.

### Figuras

Os arquivos das figuras devem ser fornecidos em formato `EPS` e `PNG` sendo armazenados no subdiretório `semanaXX/figuras`, onde `semanaXX/figuras` é o diretório do capítulo que a figura pertence. As figuras devem ser fornecidas no tamanho desejado para o livro, i.e. evite definir o tamanho da figura no código LaTeX. Para uma vizualização conformável em celulares, recomendamos que a figura tenha largura inferior a 320px.

A inclusão de uma figura no código LaTex deve ser feita da seguinte forma:

    \begin{figure}
        \centering
	    \includegraphics{semanaXX/figuras/figfoo}
		\caption{Descrição da figura figfoo.}
		\label{fig:figfoo}
	\end{figure}

Não insira figuras dentro de outros ambientes como, por exemplo, `ex`, `teo`, `sol` e outros.

Sempre que possível, forneça o código fonte da figura armazenando-o na pasta `semanaXX/figuras/figfoo`. Nesta mesma pasta, crie um arquivo README.md com uma descrição da figura e a linceça da mesma, a qual deve ser compatível com a CC-BY-SA 3.0.

### Equações e símbolos matemáticos

As equações e símbolos matemáticos estão escritos usando a coleção de pacotes [AMS-LaTeX](http://www.ams.org/publications/authors/tex/amslatex).

#### Uso da vírgula

O livro usa o pacote LaTeX [`icomma`](https://www.ctan.org/pkg/icomma). Desta forma, para que um espaço apareça após uma vírgula é necessário por o espaço no código LaTeX. Por exemplo, o código LaTeX `$1,24$` produz o número 1,24, enquanto o código `$1, 24$` porduz os números 1 e 24 separados por uma vírgula e um espaço.