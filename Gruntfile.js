module.exports = function(grunt) {
  "use strict";

  grunt.initConfig({
    srcFiles: ["src/**/*.purs"],
    psc: {
      options: {
        main: "Hello.Ps",
        modules: ["Hello.Ps"]
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
