module.exports = (grunt) ->

    require('load-grunt-tasks')(grunt)

    grunt.initConfig

        stylus:
            compile:
                options:
                    compress: false
                files:
                    'dist/nondestructive-reset.css': 'src/nondestructive-reset.styl'

        jade:
            compile:
                options:
                    pretty: true
                files:
                    'test/index.html': 'src/test.jade'

        connect:
            server:
                options:
                    port: '3000'

        watch:
            options:
                livereload: true
            stylus:
                files: ['src/*.styl']
                tasks: ['stylus']
            jade:
                files: ['src/*.jade']
                tasks: ['jade']

    grunt.registerTask 'build', ['stylus', 'jade']
    grunt.registerTask 'serve', ['connect', 'watch']
