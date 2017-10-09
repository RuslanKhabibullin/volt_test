class App.Components.Avatar extends App.Components.Base
 
  bindListeners: ->
    $(document).on("app:avatar:fetch:success", @_showAvatar)
  
  _showAvatar: (_event, avatarURL) =>
    @$el.empty()
    @$el.append(JST["templates/avatar/avatar"](src: avatarURL))

$ ->
  new App.Components.Avatar($(el)) for el in $(".js-avatar-place")
