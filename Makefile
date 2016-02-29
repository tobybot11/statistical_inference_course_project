all: first.html second.html

first.html: first.Rmd
	R -e "rmarkdown::render('first.Rmd', 'all')"
	open first.html 

second.html: second.Rmd
	R -e "rmarkdown::render('second.Rmd', 'all')"
	open second.html 

.PHONY: clean
clean: 
	rm -rf first.html first.md second.html second.md
