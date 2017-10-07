module Api
  module V1
    class PostsController < ApplicationController
      before_action :authenticate_user!
      after_action -> { add_pagination_headers_info_for(posts) }, only: :index

      expose(:post)
      expose(:posts, :paginated_posts)

      def create
        post.author = current_user
        if post.save
          render json: post.reload, status: :created
        else
          render_errors_for post
        end
      end

      def show
        render json: post
      end

      def index
        render json: posts
      end

      private

      def post_params
        params.permit(:title, :body, :published_at)
      end

      def paginated_posts
        PaginatedPostsQuery.new(Post.all, page: params[:page], per_page: params[:per_page]).all
      end
    end
  end
end
