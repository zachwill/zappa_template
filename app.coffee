PORT = process.env.PORT || 3333

require('zappa') PORT, ->
  @use 'static'

  @get '/': ->
    @render 'home'

  @get '/about/': ->
    @render 'about'
