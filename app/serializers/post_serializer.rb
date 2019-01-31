class PostSerializer < ActiveModel::Serializer
  has_many :player_post_comments
  has_many :friend_post_comments
  attributes :id, :player_id, :friend_id, :content
end
