define (require) ->
    Source = require 'cs!views/source'
    Buttons = require 'cs!views/buttons'
    Markdown = require 'cs!views/markdown'

    new Markdown(el: '#view')
    new Source(el: '#source')
    new Buttons(el: '#buttons').render().bindViews()
