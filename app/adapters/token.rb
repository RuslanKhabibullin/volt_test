class Token
  include ActiveModel::Serializers::JSON

  attr_reader :access_token

  def initialize(token)
    @access_token = token
  end

  def token_type
    "Bearer"
  end

  def id
    @id ||= Time.current.to_i
  end
end
