{View} = require 'atom'

module.exports =
class InstantView extends View
  @content: ->
    @div class: 'instant overlay from-top', =>
      @div "The Instant package is Alive! It's ALIVE!", class: "message"

  initialize: (serializeState) ->
    atom.workspaceView.command "instant:toggle", => @toggle()

  # Returns an object that can be retrieved when package is activated
  serialize: ->

  # Tear down any state and detach
  destroy: ->
    @detach()

  toggle: ->
    console.log "InstantView was toggled!"
    if @hasParent()
      @detach()
    else
      atom.workspaceView.append(this)
