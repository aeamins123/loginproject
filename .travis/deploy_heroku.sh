wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install @heroku-cli/plugin-container-registry
heroku container:login
heroku container:push web –a $HEROKU_APP_NAME
heroku container:release web –a $HEROKU_APP_NAME