module.exports = {
  config: {
    paths: {
      watched: ["app"]
    },
    files: {
      javascripts: {
        joinTo: "js/app.js"
      },
      stylesheets: {
        joinTo: "css/app.css"
      }
    },
    npm: {
      styles: { "highlight.js": [ "styles/default.css" ] },
      globals: { hljs: "highlight.js" }
    },
    plugins: {
      elmBrunch: {
        mainModules: ["app/elm/Main.elm"],
        outputFolder: "public/js/"
      },
      sass: {
        mode: "native",
        options: {
          includePaths: [
            'node_modules/bulma',
            'node_modules/font-awesome/scss',
            'node_modules/highlight.js/styles'
          ]
        }
      }
    }
  }
};
