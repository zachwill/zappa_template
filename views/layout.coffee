doctype 5

comment "paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/"
ie  "if lt IE 7", ->
  html class: "no-js ie6", lang: "en"
ie  "if IE 7", ->
  html class: "no-js ie7", lang: "en"
ie "if IE 8", ->
  html class: "no-js ie8", lang: "en"
ie "if gt IE 8", ->
  html class: "no-js", lang: "en"

head ->
  meta charset: "utf-8"

  title @title or 'yoursite.com'

  meta name: "description", content: ""
  meta name: "author", content: ""
  meta name: "viewport", content: "width=980"

  # HTML5 shim, for IE 6-8 support of HTML elements
  ie "if lt IE 9", ->
    script src: "http://html5shim.googlecode.com/svn/trunk/html5.js"

  link rel: "stylesheet", href: "/css/bootstrap.min.css"
  link rel: "stylesheet/less", href: "/css/main.less"

  @css

  # Use less.js to compile 'stylesheet/less' files.
  script src: "//cdnjs.cloudflare.com/ajax/libs/less.js/1.1.3/less-1.1.3.min.js"
  coffeescript ->
    window.less or document.write('<script src="/js/libs/less-1.1.3.min.js">\x3C/script>')

  link rel: "shortcut icon", href: "/favicon.ico"
  link rel: "apple-touch-icon", href: "/apple-touch-icon.png"
  link rel: "apple-touch-icon", sizes: "72x72", href: "/apple-touch-icon-72x72.png"
  link rel: "apple-touch-icon", sizes: "114x114", href: "/apple-touch-icon-114x114.png"

  # Need Modernizr? Uncomment the following script.
  # script src:"/js/libs/modernizr-2.0.6.js"

body ->
  header ->
    partial "header"

  div "#main", role: "main", @body

  footer @footer

  # JavaScript at the bottom for fast page loading.

  # Grab Google CDN's jQuery, with a protocol relative URL; fall back to local if necessary
  script src: "//ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.min.js"
  coffeescript ->
    window.jQuery or document.write('<script src="/js/libs/jquery-1.6.4.min.js">\x3C/script>')

  # Additional JavaScript libraries and plugins...
  script src: "/js/libs/bootstrap-dropdown.js"

  @js

  # mathiasbynens.be/notes/async-analytics-snippet Change UA-XXXXX-X to be your site's ID
  script type: "text/javascript", -> """
    var _gaq=[['_setAccount','UA-XXXXX-X'],['_trackPageview']];
    (function(d,t){var g=d.createElement(t),s=d.getElementsByTagName(t)[0];g.async=1;
    g.src=('https:'==location.protocol?'//ssl':'//www')+'.google-analytics.com/ga.js';
    s.parentNode.insertBefore(g,s)}(document,'script'));
  """

  # Prompt IE 6-7 users to install Chrome Frame.
  ie "if lte IE 7", ->
    script src: "//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"
    script -> "window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})"
