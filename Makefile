RESUME=resume.tex

pdf:
	lualatex $(RESUME)
	mv $(RESUME:.tex=.pdf) Shane_Tully_Resume.pdf

spellcheck:
	aspell --mode=tex --check $(RESUME)
