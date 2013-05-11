define (require) ->
    Backbone = require 'backbone'
    marked = require 'marked'
    prettify = require 'prettify'

    Markdown = Backbone.View.extend
        initialize: ->
            Backbone.Events.on 'gnote:render', @render, @
            Backbone.Events.on 'gnote:render', @prettify, @

        render: (source) ->
            @el.innerHTML = marked source or ''
            Backbone.Events.trigger 'gnote:rendered'
            @

        prettify: ->
            @$('pre').addClass('prettyprint').each (idx, el)->
                code = el.firstChild
                code.innerHTML = prettify.prettyPrintOne code.innerHTML