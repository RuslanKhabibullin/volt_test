module Api
  module V1
    class CommentsController < ApplicationController
      before_action :authenticate_user!
      after_action -> { add_pagination_headers_info_for(comments) }, only: :index

      expose(:post)
      expose(:comment, scope: -> { post.comments })
      expose(:comments, :paginated_comments)

      def create
        comment.author = current_user
        if comment.save
          render json: comment.reload, status: :created
        else
          render_errors_for comment
        end
      end

      def index
        render json: comments
      end

      private

      def comment_params
        params.permit(:body, :published_at)
      end

      def paginated_comments
        PaginatedResourceQuery.new(
          post.comments,
          page: params[:page],
          per_page: params[:per_page]
        ).all
      end
    end
  end
end
