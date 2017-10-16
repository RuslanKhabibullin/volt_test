module Api
  module V1
    class SessionsController < ApplicationController
      delegate :user, to: :authentication

      def create
        if authentication.success?
          sign_in :user, user
          render json: token, status: :created
        else
          head :unauthorized
        end
      end

      private

      def session_params
        params.permit(:email, :password)
      end

      def token
        @token ||= Token.new(authentication.token)
      end

      def authentication
        @authentication ||= Authenticate.call(session_params)
      end
    end
  end
end
