# RUN adalah sebuah instruksi untuk mengeksekusi perintah di dalam
# image pada saat build stage.
# Bisa menggunakan dua format
RUN command
RUN ["executable","argument","..."]
# Show output display
--progress=plain
# Not use cache when build
--no-cache

# Example
# Build
docker build -t ynwahid/run:latest "dockerfiles/2. RUN"
# Show the built docker image
docker image ls
# Build with output display and no cache
docker build -t ynwahid/run:latest "dockerfiles/2. RUN" --progress=plain --no-cache