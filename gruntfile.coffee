module.exports = (grunt)->

  require('load-grunt-tasks')(grunt)

  grunt.initConfig

    stylus:
      compile:
        options:
          compress: false
        files:
          'nondestructive-reset.css': 'src/nondestructive-reset.styl'

    jade:
      compile:
        options:
          pretty: false
          basedir: __dirname
        files:
          'test/index.html': 'test/index.jade'

    connect:
      server:
        options:
          port: '3000'
          base: './'
          open:
            target: 'http://localhost:<%= connect.server.options.port %>/test/'

    watch:
      options:
        livereload: true
      default:
        files: ['src/*.styl', 'test/*.jade']
        tasks: ['build']

  grunt.registerTask 'build', ['stylus', 'jade']
  grunt.registerTask 'serve', ['connect', 'watch']
