class StreakSerializer < ActiveModel::Serializer

  has_one :activity

  attributes :id, :player_id, :friend_id, :count, :created_at, :updated_at
end
