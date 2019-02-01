class PostSerializer < ActiveModel::Serializer

  has_many :comments

  attributes :id, :player_id, :friend_id, :content
end
