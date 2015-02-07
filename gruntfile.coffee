module.exports = (grunt) ->

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
                    pretty: true
                files:
                    'test/index.html': 'test/index.jade'

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
                files: ['test/*.jade']
                tasks: ['jade']

    grunt.registerTask 'build', ['stylus', 'jade']
    grunt.registerTask 'serve', ['connect', 'watch']
