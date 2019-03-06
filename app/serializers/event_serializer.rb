class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :date, :location, :description, :banner_img, :user_id
  has_many :users
end
