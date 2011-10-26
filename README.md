Zappa Template
==============

An easy-to-use template for working with
[Zappa](https://github.com/mauricemach/zappa) and
[CoffeeScript](http://jashkenas.github.com/coffee-script/) on Heroku.


Instructions
------------

First, make sure you have [npm installed](http://npmjs.org/).

Now, since all the dependencies are listed in the `package.json` file,
simply run the following:

    npm install

You should then be able to run the `app.coffee` script.

    coffee app.coffee


Heroku
------

Since the `Procfile` is already included, you first need to make sure
you [have the Heroku CLI
installed](http://devcenter.heroku.com/articles/heroku-command).

Then run the following command -- with the name of your application
substituted for `app_name`.

    heroku create app_name --stack cedar
    git push heroku master

You should then be able to see the live application.

    heroku open

To see this template in action, visit:
[zappajs.herokuapp.com](http://zappajs.herokuapp.com)
