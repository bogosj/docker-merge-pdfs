#!/bin/sh

TMP=`mktemp -d`

pdftk /work/files/*pdf cat output $TMP/input.pdf
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default \
         -dNOPAUSE -dQUIET -dBATCH -sOutputFile=/work/files/output.pdf $TMP/input.pdf

