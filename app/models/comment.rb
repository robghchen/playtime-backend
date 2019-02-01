class Comment < ApplicationRecord
  # belongs_to :player, class_name: :User
  # belongs_to :friend, class_name: :User, optional: true

  belongs_to :user
  belongs_to :post
end
