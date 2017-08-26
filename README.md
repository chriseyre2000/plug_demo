# PlugDemo

** This is a simple sample plug/cowboy/heroku application.  **

It started out based upon the instructions in https://elixirschool.com/en/lessons/specifics/plug/

Note that locally you need to look at http://127.0.0.1:5000 rather than localhost.


###To run use:
```

mix run --no-halt
```

- Plug is a framework for decomposing an application into a series of reusable "Plugs"
- Cowboy is an Elixir webserver that can be used to serve plugs
- Heroku is an application hosting environment


This app has been extended to deploy to heroku - it gets the heroku port from it's env variable


## Deploying to heroku


create a heroku account and create an application

For elixir 1.4 support you need
```
heroku buildpacks:set https://github.com/HashNuke/heroku-buildpack-elixir.git -a <appname>

heroku git:remote -a <appname>
```

###To deploy:
```
git push heroku master
```

