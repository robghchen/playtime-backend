class CommentSerializer < ActiveModel::Serializer

  belongs_to :user
  belongs_to :post
  
  attributes :id, :user_id, :user, :post_id, :post, :comment, :created_at, :updated_at
end
