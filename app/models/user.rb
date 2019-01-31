class User < ApplicationRecord
  has_secure_password
  validates :first_name, length: { in: 2..10}
  validates :last_name, length: { in: 2..10}
  validates :username, presence: true, length: { in: 2..10}, uniqueness: { case_sensitive: false }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates_format_of :email, :with => /@/
  validates :city, length: { in: 2..15}
  validates :school, length: { in: 2..15}
  validates :work, length: { in: 2..15}

  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :comments, through: :posts
end