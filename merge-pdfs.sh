#!/bin/sh

gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default \
         -dNOPAUSE -dQUIET -dBATCH -sOutputFile=/work/files/output.pdf /work/files/*pdf

