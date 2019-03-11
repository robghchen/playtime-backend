class EventSerializer < ActiveModel::Serializer
  
  has_many :users

  attributes :id, :title, :price, :date, :location, :description, :banner_img, :event_img, :user_id, :enable_posts, :enable_seats
end