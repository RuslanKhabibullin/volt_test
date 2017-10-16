module JWT
  class Wrapper
    def self.encode(payload)
      JWT.encode(payload, Rails.application.secrets.jwt_secret_key)
    end

    def self.decode(token)
      decoded_token = JWT.decode(token, Rails.application.secrets.jwt_secret_key)
      HashWithIndifferentAccess.new(decoded_token.first)
    end
  end
end
