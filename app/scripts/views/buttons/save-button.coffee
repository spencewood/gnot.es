define (require) ->
    Backbone = require 'backbone'
    Gnote = require 'cs!models/gnote'

    SaveButton = Backbone.View.extend
        initialize: ->
            Backbone.Events.on 'gnote:save', @save, @

        events:
            'click': 'saveEvent'

        saveEvent: (e) ->
            e.preventDefault()
            Backbone.Events.trigger 'gnote:save'

        save: ->
            console.log('saving')
            Gnote.save()