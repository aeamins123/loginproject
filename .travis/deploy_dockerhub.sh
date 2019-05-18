echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
TAG=”latest”
docker build -f Dockerfile -t "loginproject":"latest"
docker tag $TRAVIS_REPO_SLUG $DOCKER_REPO
docker push $DOCKER_REPO