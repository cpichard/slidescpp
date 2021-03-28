all: introduction.html session01.html

introduction.html: introduction.md Makefile template.html
	pandoc --standalone -t revealjs --section-divs --template=template.html -o introduction.html introduction.md -V revealjs-url=./reveal.js --lua-filter=revealjs-codeblock.lua  --slide-level 3

session01.html: session01.md Makefile template.html
	pandoc --standalone -t revealjs --section-divs --template=template.html -o session01.html session01.md -V revealjs-url=./reveal.js --lua-filter=revealjs-codeblock.lua  --slide-level 3
