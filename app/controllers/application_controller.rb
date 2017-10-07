class ApplicationController < ActionController::Base
  include Authentication

  protect_from_forgery with: :null_session

  respond_to :json

  protected

  def render_errors_for(entity)
    render json: { errors: entity.errors.full_messages }, status: :unprocessable_entity
  end
end
