'use strict';
module.exports = function (grunt) {


	grunt.initConfig({
		clean: {
			css: ['css/main.css']
		},
		sass: {
			options: {
				loadPath: ['scss/', 'vendor/foundation/scss/']
			},
			main: {
				files: {
					'css/main.css': 'scss/main.scss'
				}
			}
		},
		watch: {}
	});

	grunt.loadNpmTasks('grunt-contrib-sass');
	grunt.loadNpmTasks('grunt-contrib-clean');
	grunt.loadNpmTasks('grunt-contrib-watch');

	// actual tasks
	grunt.registerTask('build-css', ['clean:css', 'sass:main']);

	// convenience
	grunt.registerTask('default', ['build-css']);
	grunt.registerTask('dev', ['default', 'watch']);
};