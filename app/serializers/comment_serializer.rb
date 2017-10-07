class CommentSerializer < ApplicationSerializer
  attributes :id, :body, :published_at, :author_id, :post_id
end
