class CommentSerializer < ActiveModel::Serializer
  attributes :id, :player_post_id, :friend_post_id, :comment
end
