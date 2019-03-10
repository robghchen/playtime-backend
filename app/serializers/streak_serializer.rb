class StreakSerializer < ActiveModel::Serializer

  has_one :activity

  attributes :id, :player_id, :player, :friend_id, :friend, :count, :created_at, :updated_at
end
