echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
TAG=latest
NAME=loginproject
docker build -f Dockerfile -t $NAME:$TAG .
docker tag $NAME  aeamins/aeamins:myfirstpush
docker push aeamins/aeamins:myfirstpush