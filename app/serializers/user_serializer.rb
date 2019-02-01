class UserSerializer < ActiveModel::Serializer
  has_many :player_posts
  has_many :friend_posts

  has_many :comments

  attributes :id, :first_name, :last_name, :username, :email, :city, :school, :work, :exp
end
