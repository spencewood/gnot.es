define (require) ->
    SourceView = require 'cs!views/source'
    ButtonsView = require 'cs!views/buttons'
    MarkdownView = require 'cs!views/markdown'

    markdownView = new MarkdownView(el: '#view')
    sourceView = new SourceView(el: '#source', destination: markdownView)
    buttonsView = new ButtonsView(el: '#buttons')

    buttonsView.render()