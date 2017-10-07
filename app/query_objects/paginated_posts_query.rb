class PaginatedPostsQuery
  PER_PAGE = 10

  attr_reader :relation, :page, :per_page
  private :relation, :page, :per_page

  def initialize(relation, pagination_params = {})
    @relation = relation
    @page = pagination_params.fetch(:page, 1)
    @per_page = pagination_params.fetch(:per_page, PER_PAGE)
  end

  def all
    relation
      .includes(:author)
      .order(published_at: :desc)
      .page(page)
      .per(per_page)
  end
end
