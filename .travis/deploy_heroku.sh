wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
heroku plugins:install @heroku-cli/plugin-container-registry
heroku container:login
echo $HEROKU_APP_NAME | heroku container:push web –-app-stdin
heroku container:release web –a $HEROKU_APP_NAME