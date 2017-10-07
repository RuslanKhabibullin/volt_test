class ApplicationController < ActionController::API
  include Authentication

  respond_to :json

  protected

  def render_errors_for(entity)
    render json: { errors: entity.errors.full_messages }, status: :unprocessable_entity
  end
end
