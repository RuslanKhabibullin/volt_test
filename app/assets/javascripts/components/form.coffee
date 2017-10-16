class App.Components.Form extends App.Components.Base
  refs:
    emailGroup: ".js-email-group"
    emailInput: ".js-email-input"
    passwordGroup: ".js-password-group"
    passwordInput: ".js-password-input"
    avatarFileInput: ".js-avatar-file-input"
    submitButton: "button[type='submit']"

  initialize: ->
    @_hideSessionInputs() if @_userToken()

  bindListeners: ->
    @$refs.submitButton.on("click", @_uploadAvatar)

  _uploadAvatar: =>
    parent.$("body").append(JST["templates/spinner/spinner"])
    if @_userToken()
      @_uploadAvatarRequest()
    else
      @_signinRequest(@$refs.emailInput.val(), @$refs.passwordInput.val())

  _signinRequest: (email, password) =>
    $.ajax
      type: "POST"
      url: "/api/v1/sessions"
      data:
        email: email,
        password: password
      success:  @_onSigninSuccess
      error: @_onFailure
  
  _onSigninSuccess: (response) =>
    token = response.data.attributes.access_token
    type = response.data.attributes.token_type
    window.localStorage.token = "#{type} #{token}"
    @_hideSessionInputs()
    @_uploadAvatarRequest()

  _uploadAvatarRequest: =>
    formData = new FormData()
    formData.append("avatar", @$refs.avatarFileInput.prop("files")[0])

    $.ajax
      type: "POST"
      url: "/api/v1/avatar"
      beforeSend: (request) =>
        request.setRequestHeader("Authorization", @_userToken())
      data: formData
      processData: false
      contentType: false
      success: @_onAvatarUploadSuccess
      error: @_onFailure

  _onAvatarUploadSuccess: (response) ->
    parent.$(".spinner").remove()
    $(document).trigger("app:avatar:fetch:success", response.thumb.url)

  _onFailure: (XMLHttpRequest, _code, status) ->
    parent.$(".spinner").remove()
    alert "#{XMLHttpRequest.status} #{status}"

  _enableSubmitButton: =>
    @$refs.submitButton.removeAttr("disabled")

  _userToken: ->
    window.localStorage.token

  _hideSessionInputs: =>
    @$refs.emailGroup.hide()
    @$refs.passwordGroup.hide()

$ ->
  new App.Components.Form($(el)) for el in $(".js-form")
