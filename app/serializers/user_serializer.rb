class UserSerializer < ActiveModel::Serializer
  has_many :player_posts
  has_many :friend_posts
  
  has_many :player_post_comments, through: :player_posts
  has_many :friend_post_comments, through: :friend_posts

  attributes :id, :first_name, :last_name, :username, :email, :city, :school, :work, :exp
end
