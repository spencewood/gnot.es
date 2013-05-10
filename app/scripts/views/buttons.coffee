define (require) ->
    _ = require 'underscore'
    Backbone = require 'backbone'
    Gnote = require 'cs!models/gnote'

    Buttons = Backbone.View.extend
        initialize: ->
            _.bindAll @

        events:
            'click #save': 'saveEvent'

        saveEvent: ->
            @save()

        save: ->
            new Gnote(title: 'test').save()