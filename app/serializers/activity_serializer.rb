class ActivitySerializer < ActiveModel::Serializer

  has_one :streak

  attributes :id, :player_id, :friend_id, :task, :created_at
end
