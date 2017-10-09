module Api
  module V1
    class AvatarsController < ApplicationController
      before_action :authenticate_user!

      def create
        if current_user.update_attributes(avatar_params)
          head :ok
        else
          render_errors_for(current_user)
        end
      end

      def show
        render json: current_user.avatar
      end

      private

      def avatar_params
        params.permit(:avatar)
      end
    end
  end
end
