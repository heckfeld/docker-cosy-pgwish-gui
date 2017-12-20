
Di 19. Dez 11:55:19 CET 2017

docker build -t docker-cosy-qbl ./
docker run -p 8022:22 --name qbl -d docker-cosy-qbl
