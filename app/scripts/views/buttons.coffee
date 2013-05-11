define (require) ->
    Backbone = require 'backbone'
    SaveButton = require 'cs!views/buttons/save-button'
    buttonsTemplate = require 'tpl!templates/buttons.tpl'

    Buttons = Backbone.View.extend
        render: ->
            @$el.html buttonsTemplate()
            @

        bindViews: ->
            new SaveButton(el: @$('.save'))
