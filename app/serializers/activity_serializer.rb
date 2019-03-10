class ActivitySerializer < ActiveModel::Serializer

  has_one :streak

  attributes :id, :player_id, :player, :friend_id, :friend, :task, :created_at
end
