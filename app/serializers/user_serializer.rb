class UserSerializer < ActiveModel::Serializer
  has_many :posts
  has_many :comments, through: :posts
  attributes :id, :first_name, :last_name, :username, :email, :city, :school, :work, :exp
end
