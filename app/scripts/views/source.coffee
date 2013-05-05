define (require) ->
    _ = require 'underscore'
    Backbone = require 'backbone'

    Source = Backbone.View.extend
        initialize: (options) ->
            _.bindAll @

            throw 'Must pass in destination view' unless options.destination
            
            @destination = options.destination

        events:
            'keyup': 'keyupEvent'
            'paste': 'pasteEvent'

        pasteEvent: ->
            _.defer @render

        keyupEvent: ->
            _.defer @render

        render: ->
            @destination.render(@$el.val()).prettify()