class Comment < ApplicationRecord
  # belongs_to :player, class_name: :User
  # belongs_to :friend, class_name: :User, optional: true

  belongs_to :player_post, class_name: :Post
  belongs_to :friend_post, class_name: :Post, optional: true
end
