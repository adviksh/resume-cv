all: cv/cv.pdf

# additional places to update my CV
cv_dirs = ../personal_website/static/files

cv/cv.pdf: cv/cv.tex cv/preamble.sty
	cd cv && xelatex cv && xelatex cv
	$(foreach cvd,$(cv_dirs), cp cv/cv.pdf $(cvd))
