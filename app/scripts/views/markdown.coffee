define (require) ->
    Backbone = require 'backbone'
    marked = require 'marked'
    prettify = require 'prettify'

    Markdown = Backbone.View.extend
        render: (source) ->
            @el.innerHTML = marked source or ''
            Backbone.Events.trigger 'markdown:rendered'
            @

        prettify: ->
            @$('pre').addClass('prettyprint').each (idx, el)->
                code = el.firstChild
                code.innerHTML = prettify.prettyPrintOne code.innerHTML