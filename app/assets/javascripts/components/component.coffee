class Component
  constructor: (el) ->
    @refs ?= {}
    @$refs = {}
    @el = el
    @$el = $(el)
    @_initRefs()
    @initialize()
    @bindUI()
    @bindListeners()

  initialize: ->
    #template method

  bindUI: ->
    #template method

  bindListeners: ->
    #template method

  _initRefs: =>
    @$refs[name] = $(selector, @$el) for name, selector of @refs

window.App = {}
window.App.Components =
  Base: Component
