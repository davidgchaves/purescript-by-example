module.exports = function(grunt) {
  "use strict";

  grunt.initConfig({
    srcFiles: ["src/**/*.purs", "bower_components/**/src/**/*.purs"],
    psc: {
      options: {
        modules: ["Data.Phonebook"]
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
