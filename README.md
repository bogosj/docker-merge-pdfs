# merge-pdfs
A simple Docker image that can can be used to merge PDF files.

## Usage
The following command will take all of the PDF files in the current working directory and merge them into a single file named `output.pdf`. The PDFs will be merged in alpha-numeric order (i.e. 2.pdf will come after 1.pdf in the merged output).

```bash
docker run --rm -v $(pwd):/work/files -u `id -u $USER` ghcr.io/bogosj/merge-pdfs
```

For easier regular use, add an alias:

```bash
alias merge-pdfs="docker run --rm -v $(pwd):/work/files -u `id -u $USER` ghcr.io/bogosj/merge-pdfs"
```

Published as [ghcr.io/bogosj/merge-pdfs](https://github.com/users/bogosj/packages/container/package/merge-pdfs)

## Status
I probably won't change this much, as I've found [SimplePDF](https://simplepdf.eu/) which lets me merge PDFs from a browser.
