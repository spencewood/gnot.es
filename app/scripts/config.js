/*
 * Require configuration
 */

require.config({
    paths: {
        cs: 'vendor/cs',
        'coffee-script': 'vendor/coffee-script',
        underscore: '../components/lodash/lodash',
        backbone: '../components/backbone/backbone',
        zepto: '../components/zepto/zepto',
        marked: '../components/marked/lib/marked',
        prettify: '../components/google-code-prettify/src/prettify'
    },
    shim: {
        zepto: {
            exports: '$'
        },
        underscore: {
            exports: '_'
        },
        backbone: {
            deps: ['underscore', 'zepto'],
            exports: 'Backbone'
        },
        marked: {
            exports: 'marked'
        }
    }
});