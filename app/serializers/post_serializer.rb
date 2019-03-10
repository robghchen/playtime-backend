class PostSerializer < ActiveModel::Serializer

  has_many :comments

  attributes :id, :player_id, :player, :friend_id, :friend, :content, :created_at, :updated_at
end
