module.exports = function(grunt){
	grunt.loadNpmTasks('grunt-contrib-uglify');
	grunt.loadNpmTasks('grunt-contrib-compass');
	grunt.loadNpmTasks('grunt-contrib-watch');
	grunt.initConfig({
		 uglify: {
		 	my_target:{
		 		files: {
		 			'app/assets/javascripts/script.js':['app/assets/components/js/*.js']
		 			
		 		}//files
		 	}// my target
		 },//uglify
		 compass:{
		 	dev:{
		 		options :{
		 			config : 'config.rb'
		 		}	
		 	} //dev
		 },//compass
		 watch :{
		 	options: {livereload: true},
		 	scripts: {
		 		files : ['app/assets/components/js/*.js'],
		 		tasks : ['uglify']
		 	},// script
		 	sass:{
		 		files : ['app/assets/components/sass/*.scss'],
		 		tasks : ['compass:dev']
		 	},//sass
		 	html :{
		 		files : ['*.html.erb']
		 	}
		 }//watch
	})//init config
	grunt.registerTask('default',['watch']);
}//export