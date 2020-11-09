docker rmi -f herokudasol || true
docker build -t herokudasol . || true
docker rmi $(docker images -f "dangling=true" -q) || true
