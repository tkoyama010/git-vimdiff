LICENCE.pdf: gpl.pdf
	mv $< $@
gpl.pdf: gpl.dvi
	dvipdf $<
gpl.dvi: gpl.tex
	platex $<
update:
	rm gpl.tex
	wget http://www.gnu.org/licenses/gpl.tex
