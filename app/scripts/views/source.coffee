define (require) ->
    _ = require 'underscore'
    Backbone = require 'backbone'

    Source = Backbone.View.extend
        initialize: (options) ->
            _.bindAll @

        events:
            'keyup': 'keyupEvent'
            'paste': 'pasteEvent'

        pasteEvent: ->
            Backbone.Events.trigger 'gnote:render', @$el.val()

        keyupEvent: ->
            Backbone.Events.trigger 'gnote:render', @$el.val()
