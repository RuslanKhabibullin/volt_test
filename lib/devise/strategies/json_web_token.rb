module Devise
  module Strategies
    class JsonWebToken < Base
      include TokenClaims

      def valid?
        request.headers["Authorization"].present?
      end

      def authenticate!
        return fail! unless claims&.key? :sub

        user = User.find_by(id: claims[:sub])

        user ? success!(user) : fail!
      rescue JWT::ExpiredSignature
        fail!(:token_expired)
      rescue JWT::VerificationError, JWT::DecodeError
        fail!
      end
    end
  end
end
