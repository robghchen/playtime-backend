class ActivitySerializer < ActiveModel::Serializer

  attributes :id, :player_id, :friend_id, :task, :created_at
end
