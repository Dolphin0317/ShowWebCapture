#!/bin/bash

> singlefile-repo/file-list.txt
find singlefile-repo -type f -name "*.html" -exec basename {} \; | while IFS= read -r file; do
    echo "<li><a href='${file}'>${file}</a></li>" >> singlefile-repo/file-list.txt
done
