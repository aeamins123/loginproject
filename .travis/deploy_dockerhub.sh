echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
TAG=latest
NAME=loginproject
docker build -f Dockerfile -t $NAME:$TAG .
docker tag $NAME $DOCKER_REPO
docker push $DOCKER_REPO