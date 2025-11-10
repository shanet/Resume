RESUME=resume.tex
OUTPUT=Kira_Tully_Resume.pdf

pdf:
	lualatex $(RESUME)
	mv $(RESUME:.tex=.pdf) $(OUTPUT)

spellcheck:
	aspell --mode=tex --check $(RESUME)

clean:
	rm $(OUTPUT)
