module.exports = function (grunt) {

    grunt.initConfig({
        // EXAMPLES
        cucumber_coverage: {
            example: {
                src: 'features',                            // folder to the tests to execute
                options: {
                    coverage: 'logs/coverage',                      // set where coverage reports will be stored in relation to gruntfile
                    check: {                                        // check coverage meets minimum requirements of project
                        lines: 100,
                        statements: 100,
                        functions: 100,
                        branches: 100,                              // all coverage levels are percentages to use during checks
                        force: true                                 // when using tags checking is not performed, set force to still check coverage levels
                    },
                    format: 'pretty',                               // showing output of feature execution (default: pretty)
                    print: 'detail',                                // display results of coverage to console (default: summary)
                    report: 'html',                                 // generate a coverage report (default: lcov)
                    steps: 'features/step_definitions',     // location of step definitions to support feature tests
                    tags: '~@Ignore',                               // Any tags you might want to limit / exclude from running
                    target: 'api/controllers'                           // target source code to perform coverage of
                }
            }
        }
    });

    require('load-grunt-tasks')(grunt, { scope: 'devDependencies' });

    grunt.loadTasks('tasks');

    grunt.registerTask('test', ['default']);

    grunt.registerTask('test', ['cucumber_coverage']);
    
};