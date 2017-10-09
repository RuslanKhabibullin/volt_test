module Api
  module V1
    class AvatarsController < ApplicationController
      before_action :authenticate_user!

      def create
        if current_user.update_attributes(avatar_params)
          render json: current_user.avatar, status: :created
        else
          render_errors_for(current_user)
        end
      end

      private

      def avatar_params
        params.permit(:avatar)
      end
    end
  end
end
