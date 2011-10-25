PORT = process.env.PORT or 3333

require('zappa') PORT, ->
  @use 'static'

  @get '/': ->
    @render 'home'

  @get '/about/': ->
    @render 'about'
