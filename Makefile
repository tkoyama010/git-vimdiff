LICENCE.pdf: gpl.pdf
	mv $< $@
gpl.pdf: gpl.dvi
	dvipdf $<
gpl.dvi: gpl.tex
	platex $<
update:
	rm gpl.tex
	wget -O file http://www.gnu.org/licenses/gpl.tex
	cat file | sed -e "s/<program>/vim-diff/g" -e "s/<year>/2014/g" -e "s/<name of author>/Tetsuo Koyama/g" -e "s/<textyear>/2014/g" > gpl.tex
