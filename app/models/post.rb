class Post < ApplicationRecord

  # has_many :friend_post_comments, class_name: :Comment, foreign_key: :player_post_id
  # has_many :friend_posts, through: :friend_post_comments, source: :friend_post 

  # has_many :player_post_comments, class_name: :Comment, foreign_key: :friend_post_id
  # has_many :player_posts, through: :player_post_comments, source: :player_post

  belongs_to :player, class_name: :User
  belongs_to :friend, class_name: :User, optional: true

  has_many :comments, dependent: :destroy
end
