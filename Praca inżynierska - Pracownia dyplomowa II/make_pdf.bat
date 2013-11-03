@echo off
set mainFile=presentation
set inputTex=tex\%mainFile%.tex
set outputPdf=tmp\%mainFile%.pdf
set releaseFile=prezentacja_pracownia_dyplomowa_2.pdf
rem tworzenie katalogu tymczasowego
if not exist tmp mkdir tmp
rem skrypt do generacji doumentu PDF
rem wygenerowanie pierwszego pliku aux
pdflatex -file-line-error-style -output-directory=tmp -aux-directory=tmp -include-directory=tex  -interaction=batchmode %inputTex%
pdflatex -file-line-error-style -output-directory=tmp -aux-directory=tmp -include-directory=tex -interaction=batchmode %inputTex%
rem tworzenie odwołań do bibliografii


rem i interaktywny pdf gotowy 
echo %outputPdf% %releaseFile%
move %outputPdf% %releaseFile%

