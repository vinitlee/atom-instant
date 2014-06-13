InstantView = require './instant-view'

module.exports =
  instantView: null

  activate: (state) ->
    @instantView = new InstantView(state.instantViewState)
    atom.workspaceView.command "instant:convert", => @convert()
    editor = atom.workspace.activePaneItem
    editor.insertText('Hello, World!')

  deactivate: ->
    @instantView.destroy()

  serialize: ->
    instantViewState: @instantView.serialize()

  convert: ->
    # This assumes the active pane item is an editor
    # editor = atom.workspace.activePaneItem
    # editor.insertText('Hello, World!')
