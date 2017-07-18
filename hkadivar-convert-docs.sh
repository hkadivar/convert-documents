#!/bin/bash

#Declare input argument as a variable
INPUTFILE=rubaiyat
OUTPUTNAME=$INPUTFILE

# Convert markdown to HTML
echo "converting $INPUTFILE to html"
pandoc -o $OUTPUTNAME.html $INPUTFILE.md

# Convert markdown to DOCX
echo "converting $INPUTFILE to docx"
pandoc -o $OUTPUTNAME.docx $INPUTFILE.md

# Convert markdown to ODT
echo "converting $INPUTFILE to odt"
pandoc -o $OUTPUTNAME.odt $INPUTFILE.md

# Convert markdown to PDF
echo "converting $inputfile to pdf"
pandoc -o $OUTPUTNAME.pdf --latex-engine=pdflatex $INPUTFILE.md

echo "converting $INPUTFILE to txt"
pandoc -o $OUTPUTNAME.txt $INPUTFILE.md

# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted $OUTPUTNAME.md to HTML, DOCX, ODT, PDF and TXT"