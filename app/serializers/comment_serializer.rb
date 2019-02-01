class CommentSerializer < ActiveModel::Serializer

  belongs_to :user
  belongs_to :post
  
  attributes :id, :user_id, :post_id, :comment
end
