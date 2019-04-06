class SeatSerializer < ActiveModel::Serializer

  # belongs_to :event

  attributes :id, :event_id, :user_id, :username, :position, :ticket_img
end
