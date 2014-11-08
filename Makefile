LICENCE.pdf: LICENCE.dvi
	dvipdf $<
LICENCE.dvi: LICENCE.tex
	platex $<
LICENCE.tex: gpl.tex
	cat $< | \
	sed -e "s/<program>/vim-diff/g" \
	-e "s/<year>/2014/g" \
	-e "s/<name of author>/Tetsuo Koyama/g" \
	-e "s/<textyear>/2014/g" \
	-e "s/<one line to give the program's name and a brief idea of what it does.>/git-vimdiff use vimdiff in git/g" > $@
gpl.tex:
	-rm -f gpl.tex
	wget http://www.gnu.org/licenses/gpl.tex
clean:
	-rm -f *.aux *.dvi *.log *.pdf *.tex
run:
	make
	okular LICENCE.pdf
install:
	cp git-vimdiff /usr/local/bin

