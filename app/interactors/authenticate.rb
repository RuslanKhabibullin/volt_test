class Authenticate
  include Interactor

  delegate :email, :password, to: :context

  def call
    user&.valid_password?(password) || context.fail!
    context.user = user
    context.token = token
  end

  private

  def user
    @user ||= User.find_by(email: email)
  end

  def token
    @token ||= JWT::Wrapper.encode(token_payload)
  end

  def token_payload
    JWT::Payload.payload_for(user)
  end
end
