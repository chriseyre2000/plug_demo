# PlugDemo

** This is a simple sample plug application.  **

It was based upon the instructions in  https://elixirschool.com/en/lessons/specifics/plug/

It also acts as a simple heroku elixir demo app

This is a test application to experiment with the Plug framework

To run use:

mix run --no-halt

The only gotcha I found was that http://localhost:5000 did not work.

Then visit http://127.0.0.1:5000

create a heroku account and make an application

For elixir 1.4 support you need

heroku buildpacks:set https://github.com/HashNuke/heroku-buildpack-elixir.git -a <appname>

heroku git:remote -a <appname>

To deploy:

git push heroku master


