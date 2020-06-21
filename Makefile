all: cv/cv.pdf

cv_dirs = ../personal_website/static/files

cv/cv.pdf: cv/cv.tex
	cd cv &&
	pdflatex cv
	$(foreach cvd,$(cv_dirs), cp cv/cv.pdf $(cvd))
