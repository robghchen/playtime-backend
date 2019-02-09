class PostSerializer < ActiveModel::Serializer

  has_many :comments

  attributes :id, :player_id, :friend_id, :content, :created_at, :updated_at
end
