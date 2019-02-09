class UserSerializer < ActiveModel::Serializer
  has_many :player_posts
  has_many :friend_posts

  has_many :comments
  has_many :activities

  attributes :id, :first_name, :last_name, :username, :email, :city, :school, :work,  :lvl, :exp, :energy, :max_energy, :speed, :profile_img, :cover_img, :exp_limit
end
