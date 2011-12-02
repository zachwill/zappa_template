###
A simple Zappa example application.

  $ coffee app.coffee

You can also start the application with an optional port number.

  $ coffee app.coffee 3333
###

PORT = process.argv[2] or 3000

require('zappa') PORT, ->
  # Cache static content for 10 minutes.
  @use @express.static "#{@root}/public", maxAge: 600000

  @get '/': ->
    @render 'home'

  @get '/about/': ->
    @render 'about'

  @get '/json': ->
    @send foo: "bar"
