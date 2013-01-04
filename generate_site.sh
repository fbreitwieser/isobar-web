#!/bin/sh

SECTION_ID=1
sed -e "s/###ID###/$SECTION_ID/" templates/template_header.html > index.html
cat templates/index-body.html >> index.html
sed -e "s/###FOOTER###/Last update on `date +%Y-%m-%d`./" templates/template_footer.html >>index.html


./sweave2html isobar 2

./sweave2html isobar-ptm 3

SECTION_ID=4
sed -e "s/###ID###/$SECTION_ID/" templates/template_header.html > references.html
cat templates/references-body.html >> references.html
sed -e "s/###FOOTER###/Last update on `date +%Y-%m-%d`./" templates/template_footer.html >>references.html


