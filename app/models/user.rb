class User < ApplicationRecord
  has_secure_password
  validates :first_name, length: { in: 2..10}
  validates :last_name, length: { in: 2..10}
  validates :username, presence: true, length: { in: 2..15}, uniqueness: { case_sensitive: false }
  # validates :email, presence: true, uniqueness: { case_sensitive: false }
  # validates_format_of :email, :with => /@/
  # validates :city, length: { in: 2..15}
  # validates :school, length: { in: 2..15}
  # validates :work, length: { in: 2..15}

  has_many :player_posts, class_name: :Post, foreign_key: :player_id
  has_many :players, through: :player_posts, source: :player

  has_many :friend_posts, class_name: :Post, foreign_key: :friend_id
  has_many :friends, through: :friend_posts, source: :friend

  has_many :player_activities, class_name: :Activity, foreign_key: :player_id 
  has_many :players, through: :player_activities, source: :player

  has_many :friend_activities, class_name: :Activity, foreign_key: :friend_id
  has_many :friends, through: :friend_activities, source: :friend

  has_many :comments, dependent: :destroy

  has_many :tasks

  has_many :friends
  
end