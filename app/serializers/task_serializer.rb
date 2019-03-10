class TaskSerializer < ActiveModel::Serializer

  belongs_to :user

  attributes :id, :user_id, :user, :post_count, :post_max, :comment_count, :comment_max, :created_at, :updated_at
end
