module Api
  module V1
    class UsersController < ApplicationController
      expose :user

      def create
        if user.save
          render json: user, status: :created
        else
          render_errors_for user
        end
      end

      private

      def user_params
        params.permit(:email, :password, :nickname)
      end
    end
  end
end
