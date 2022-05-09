# Untuk membuat docker image dari Dockerfile, kita bisa
# menggunakan command docker build.
docker build -t repo-name/app-name:tag dockerfile-folder
# Kita juga bisa menambahkan tag lebih dari satu
docker build -t repo-name/app-name:tag -t repo-name/app-name:latest dockerfile-folder