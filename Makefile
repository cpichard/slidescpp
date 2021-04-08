all: introduction.html session01.html session02.html session03.html

%.html: %.md Makefile template.html
	pandoc --standalone -t revealjs --section-divs --template=template.html -o $@ $< -V revealjs-url=./reveal.js --lua-filter=revealjs-codeblock.lua  --slide-level 3
