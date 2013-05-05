define (require) ->
    Backbone = require 'backbone'
    settings = require 'settings'

    Gnote = Backbone.Model.extend
        urlRoot : settings.gnoteUrl