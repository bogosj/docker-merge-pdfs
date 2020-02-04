#!/bin/sh

TMP_DIR=`mktemp -d`

pdftk /work/files/*pdf cat output $TMP_DIR/input.pdf
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default \
         -dNOPAUSE -dQUIET -dBATCH -sOutputFile=/work/files/output.pdf $TMP_DIR/input.pdf

