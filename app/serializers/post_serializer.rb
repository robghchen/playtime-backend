class PostSerializer < ActiveModel::Serializer
  has_many :comments
  attributes :id, :user_id, :content
end
