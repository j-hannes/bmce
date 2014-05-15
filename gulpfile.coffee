gulp    = require 'gulp'
connect = require 'gulp-connect'
watch   = require 'gulp-watch'

gulp.task 'connect', () ->
  connect.server
    root: './'
    livereload: true

gulp.task 'watch', () ->
  watch
    glob: [
      'index.html',
      'assets/javascripts/**/*.js',
    ]
  .pipe connect.reload()

gulp.task 'default', [
  'connect',
  'watch',
]
