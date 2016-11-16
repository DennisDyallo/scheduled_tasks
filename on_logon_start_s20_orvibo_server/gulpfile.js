var gulp = require('gulp'),
    connect = require('gulp-connect-php');

gulp.task('connect', function() {
    connect.server({
		base: '.',
		hostname: '192.168.0.15'
	});
});

gulp.task('default', ['connect']);