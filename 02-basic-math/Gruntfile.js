module.exports = function(grunt) {
  "use strict";

  grunt.initConfig({
    srcFiles: ["src/**/*.purs", "bower_components/**/src/**/*.purs"],
    psc: {
      options: {
        main: "Mathsamples",
        modules: ["Mathsamples"]
      },
      all: {
        src: ["<%=srcFiles%>"],
        dest: "dist/Main.js"
      }
    }
  });

  grunt.loadNpmTasks("grunt-purescript");

  grunt.registerTask("default", ["psc:all"]);
};
