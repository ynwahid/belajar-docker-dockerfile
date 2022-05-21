# LABEL merupakan instruksi yang digunakan untuk menambahkan metadata
# ke dalam docker image yang akan kita buat.
# Metadata adalah informasi tambahan, misal: seperti nama aplikasi,
# versi aplikasi, pembuat aplikasi, website aplikasi, perusahaan aplikasi,
# lisensi aplikasi, dll.
LABEL <key>=<value> ...

# Example
docker build -t ynwahid/label:latest "dockerfiles/4. LABEL"
# Inspect the image
docker image inspect ynwahid/label