-module(index).

data(_) ->
    #{
      site        => {eterm,    "site.config"},
      products    => {markdown, "products/*.md"}
     }.

site(Data) ->
    #{
      "site/index.html" =>
          {template, "templates/index.html",
           #{site_root => ""}},
      "site/img/*.png" =>
          {files, "assets/img/*.png"},
      "site/img/products/*.png" =>
          {files, "assets/img/products/*.png"},
      "site/css/*.css" =>
          {files, "assets/css/*.css"},
      "site/font-awesome/css/font-awesome.min.css" =>
          {file, "assets/font-awesome/css/font-awesome.min.css"},
      "site/font-awesome/fonts/fontawesome-webfont.ttf" =>
          {file, "assets/font-awesome/fonts/fontawesome-webfont.ttf"},
      "site/font-awesome/fonts/fontawesome-webfont.woff" =>
          {file, "assets/font-awesome/fonts/fontawesome-webfont.woff"},
      "site/js/*.js" =>
          {files, "assets/js/*.js"}
     }.
