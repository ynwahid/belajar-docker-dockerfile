# ADD merupakan instruksi yang digunakan untuk menambahkan file
# dari source ke dalam folder di dalam docker image.
# Instruksi ADD bisa mendeteksi apakah sebuah file source (lokal maupun daring)
# merupakan file kompresi seperti tar.gz, gzip, dll.
# Jika file terdeteksi sebagai file kompresi maka secara otomatis
# akan diekstrak. Jika tidak ingin mengekstrak bisa menggunakan
# instruksi COPY.
# Instruksi ADD juga mendukung penambahan banyak file sekaligus.
# Penambahan banyak file sekaligus menggunakan pattern
# match Golang (https://pkg.go.dev/path/filepath#Match).
# Format instruksi ADD
ADD <source> <image_destination>

# Example
docker build -t ynwahid/add:latest "dockerfiles/5. ADD"
# Inspect the image
docker image inspect ynwahid/add
# Create image first
docker container create --name add ynwahid/add
# Start the container
docker container start add
# Log akan menampilkan semua output dari console baik yang baru saja
# dijalankan atau yang dijalankan pada waktu sebelum-sebelumnya.
docker container logs add