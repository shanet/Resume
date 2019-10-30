RESUME=resume.tex
OUTPUT=Shane_Tully_Resume.pdf

pdf:
	lualatex $(RESUME)
	mv $(RESUME:.tex=.pdf) $(OUTPUT)

spellcheck:
	aspell --mode=tex --check $(RESUME)

deploy:
	scp $(OUTPUT) shane@shanetully.com:/srv/http/blog/assets/

clean:
	rm $(OUTPUT)
