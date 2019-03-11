class SeatSerializer < ActiveModel::Serializer

  # belongs_to :event

  attributes :id, :position, :user_id
end
