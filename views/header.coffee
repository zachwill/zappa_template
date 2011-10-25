div class: "topbar", ->
  div class: "fill", ->
    div class: "container", ->

      a href: "/", class: "brand", -> "site"

      ul class: "secondary-nav", ->
        li ->
          a href: "/about/", -> "About"
        li class: "menu dropdown", ->
          li class: "menu dropdown", "data-dropdown": "dropdown", ->
            a href: "#", class: "menu", -> "Dropdown"
            ul class: "menu-dropdown span5", ->
              li ->
                a href: "#", -> "Lorem"
              li class: "divider"
              li ->
                a href: "#", -> "Ipsum"
        li ->
          a href: "http://github.com/zachwill/sinatra_template", -> "Github"
