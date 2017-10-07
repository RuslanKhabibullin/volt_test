class ApplicationController < ActionController::API
  include Authentication

  respond_to :json

  protected

  def render_errors_for(entity)
    render json: { errors: entity.errors.full_messages }, status: :unprocessable_entity
  end

  def add_pagination_headers_info_for(collection)
    headers.merge!(
      "Pagination-Pages" => collection.total_pages,
      "Pagination-Entries" => collection.total_count
    )
  end
end
