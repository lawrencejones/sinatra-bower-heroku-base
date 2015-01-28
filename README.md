# <APP_NAME>

Run `./configure.sh APP_NAME` to replace all project title placeholders with project name.

## Template Purpose

This template is designed to play nicely with Heroku, while making use of a few build tools to get you off the ground as fast as possible.

For the backend logic, [Ruby](https://www.ruby-lang.org/en/) is the choice running the [Sinatra](http://www.sinatrarb.com/) framework. The main program logic for the backend can be found in `./app.rb`.

To manage client dependencies, [Bower](http://bower.io/) has been selected. Bower requires [node](http://nodejs.org) to run, and so this is also a node package. Any client packages should then be added to the `./bower.json` file.

## Running

Once the project has been configured with `./configure.sh`, you're ready to go.

Run these commands to setup the project with all frameworks...

```sh
bundle install  # install ruby dependencies
npm install  # install node dependencies
./node_modules/.bin/bower install  # install client dependencies
```

To then start the server, run...

```sh
bundle exec rackup config.ru -p 4567
```

## Development

To have Sinatra restart on any changes, run...

```sh
bundle exec rerun 'rackup ./config.ru -p 4567'
```
