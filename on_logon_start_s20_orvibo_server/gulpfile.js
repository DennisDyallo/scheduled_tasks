var gulp = require('gulp'),
    connect = require('gulp-connect-php');

gulp.task('connect', function() {
    connect.server({
		base: '.',
		hostname: 'localhost'
	});
});

gulp.task('default', ['connect']);