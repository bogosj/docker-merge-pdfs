#!/bin/sh
set -x #echo on

pdftk /work/files/*pdf cat output /work/files/input.pdf
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default \
         -dNOPAUSE -dQUIET -dBATCH -sOutputFile=/work/files/output.pdf /work/files/input.pdf
rm /work/files/input.pdf

