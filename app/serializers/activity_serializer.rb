class ActivitySerializer < ActiveModel::Serializer

  belongs_to :user

  attributes :id, :user_id, :task, :created_at
end
