echo "$DOCKER_PASS" | docker login -u "$DOCKER_USER" --password-stdin
TAG=”latest”
docker build -f Dockerfile -t $TRAVIS_REPO_SLUG:$TAG .
docker tag $TRAVIS_REPO_SLUG $DOCKER_REPO
docker push $DOCKER_REPO