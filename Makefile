all: first.html

first.html: first.Rmd
	R -e "rmarkdown::render('first.Rmd', 'all')"
	open first.html 

.PHONY: clean
clean: 
	rm -rf first.html first.md 
