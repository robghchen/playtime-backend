class ActivitySerializer < ActiveModel::Serializer

  belongs_to :user

  attributes :id, :task, :created_at
end
