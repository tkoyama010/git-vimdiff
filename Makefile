LICENCE.pdf: gpl.tex
	platex -o $@ $<
update:
	rm gpl.tex
	wget http://www.gnu.org/licenses/gpl.tex
