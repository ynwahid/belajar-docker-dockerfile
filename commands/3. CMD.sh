# CMD merupakan instruksi yang digunakan ketika docker container berjalan.
# CMD tidak dijalankan ketika proses build, namun ketika docker container dijalankan.
# CMD tidak bisa lebih dari satu dalam dockerfile. Jika ada lebih dari satu, maka
# yang akan digunakan adalah yang terakhir.
# Bisa menggunakan beberapa format
CMD command param param
CMD [“executable”, “param”, “param”]
# Menggunakan ENTRY POINT
CMD [“param”, “param”]

# Example
docker build -t ynwahid/cmd:latest "dockerfiles/3. CMD"
# Inspect the image
docker image inspect ynwahid/cmd
# Create image first
docker container create --name cmd ynwahid/cmd
# Start the container
docker container start cmd
# Log akan menampilkan semua output dari console baik yang baru saja
# dijalankan atau yang dijalankan pada waktu sebelum-sebelumnya.
docker container logs cmd