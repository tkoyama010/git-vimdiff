LICENCE.pdf: LICENCE.dvi
	dvipdf $<
LICENCE.dvi: LICENCE.tex
	platex $<
update:
	-rm gpl.tex
	wget http://www.gnu.org/licenses/gpl.tex
	cat gpl.tex | sed -e "s/<program>/vim-diff/g" -e "s/<year>/2014/g" -e "s/<name of author>/Tetsuo Koyama/g" -e "s/<textyear>/2014/g" -e "s/<one line to give the program's name and a brief idea of what it does.>/git-vimdiff use vimdiff in git/g" > LICENCE.tex
clean:
	-rm *.aux *.dvi *.log *.pdf
