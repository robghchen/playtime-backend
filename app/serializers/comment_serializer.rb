class CommentSerializer < ActiveModel::Serializer

  belongs_to :user
  belongs_to :post
  
  attributes :id, :user_id, :post_id, :comment, :created_at, :updated_at
end
