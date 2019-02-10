class Post < ApplicationRecord

  belongs_to :player, class_name: :User
  belongs_to :friend, class_name: :User, optional: true

  has_many :comments, dependent: :destroy
end
