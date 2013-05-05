define (require) ->
    _ = require 'underscore'
    Backbone = require 'backbone'
    Gnot = require 'cs!models/gnot'

    Buttons = Backbone.View.extend
        initialize: ->
            _.bindAll @

        events:
            'click #save': 'saveEvent'

        saveEvent: ->
            @save()

        save: ->
            new Gnot(title: 'test').save()