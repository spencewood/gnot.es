define (require) ->
    _ = require 'underscore'
    Backbone = require 'backbone'

    Source = Backbone.View.extend
        initialize: (options) ->
            _.bindAll @

            unless options.destination
                throw 'Must pass in destination view'

            @destination = options.destination

        events:
            'keyup': 'keyupEvent'
            'paste': 'pasteEvent'

        pasteEvent: ->
            setTimeout =>
                @render()
            , 0

        keyupEvent: ->
            @render()

        render: ->
            @destination.render(@$el.val()).prettify()