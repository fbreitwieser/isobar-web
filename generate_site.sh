#!/bin/sh

SECTION_ID=1
sed -e "s/###ID###/$SECTION_ID/" template_header.html > index.html
cat index-body.html >> index.html
sed -e "s/###FOOTER###/Last update on `date +%Y-%m-%d`./" template_footer.html >>index.html


./sweave2html isobar 2

./sweave2html isobar-ptm 3

SECTION_ID=4
sed -e "s/###ID###/$SECTION_ID/" template_header.html > references.html
cat references-body.html >> references.html
sed -e "s/###FOOTER###/Last update on `date +%Y-%m-%d`./" template_footer.html >>references.html


