module JWT
  class Payload
    def self.payload_for(user, expiration: nil)
      expiration ||= Rails.application.secrets.jwt_expiration_hours
      {
        sub: user.id,
        iat: Time.current.to_i,
        exp: expiration.to_i.hours.from_now.to_i
      }
    end
  end
end
