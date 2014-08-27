path = require 'path'

module.exports =
  configDefaults:
    showOnStartup: true

  activate: ->
    atom.workspaceView.command 'poxy:show-welcome-buffer', => @show()
    if atom.config.get('poxy.showOnStartup')
      @show()
      atom.config.set('poxy.showOnStartup', false)

  show: ->
    welcomePath = path.resolve(__dirname, '..', 'docs', process.platform, 'poxy.md')
    atom.workspaceView.open welcomePath
