wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install @heroku-cli/plugin-container-registry
heroku container:login
docker build -t registry.heroku.com/${HEROKU_APP_NAME}/web .
heroku container:release web –a $HEROKU_APP_NAME