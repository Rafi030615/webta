#!/bin/bash

# Direktori tempat file HTML akan dibuat
HTML_DIR="./html_files"

# Buat direktori jika belum ada
if [ ! -d "$HTML_DIR" ]; then
    mkdir -p "$HTML_DIR"
fi

# Nama file gambar (pastikan gambar ini berada di direktori yang sesuai)
IMAGE1="1.jpg"
IMAGE2="2.jpg"
IMAGE3="3.jpg"
IMAGE4="4.jpg"
IMAGE5="5.jpg"

# Loop untuk membuat file index1.html hingga index100.html
for i in $(seq 1 100); do
    FILE_PATH="${HTML_DIR}/index${i}.html"

    # Membuat konten HTML dengan 3 gambar lokal
    echo "<!DOCTYPE html>
<html lang=\"en\">
<head>
    <meta charset=\"UTF-8\">
    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">
    <title>Index ${i}</title>
</head>
<body>
    <h1>Index ${i}</h1>
    <img src=\"${IMAGE1}\" alt=\"Image 1\">
    <img src=\"${IMAGE2}\" alt=\"Image 2\">
    <img src=\"${IMAGE3}\" alt=\"Image 3\">
    <img src=\"${IMAGE4}\" alt=\"Image 4\">
    <img src=\"${IMAGE5}\" alt=\"Image 5\">
</body>
</html>" > "$FILE_PATH"

    echo "File $FILE_PATH dibuat."
done

echo "Semua file index1.html hingga index100.html berhasil dibuat di $HTML_DIR."
