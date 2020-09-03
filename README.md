# merge-pdfs
A simple Docker image that can can be used to merge PDF files.

## Usage
The following command will take all of the PDF files in the current working directory and merge them into a single file named `output.pdf`. The PDFs will be merged in alpha-numeric order (i.e. 2.pdf will come after 1.pdf in the merged output).

```bash
docker run --rm -v $(pwd):/work/files -u `id -u $USER` ghcr.io/bogosj/merge-pdfs
```

[Docker Hub](https://hub.docker.com/r/bogosj/merge-pdfs)
