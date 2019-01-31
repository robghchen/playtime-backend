class CommentSerializer < ActiveModel::Serializer
  attributes :id, :post_id, :comment
end
