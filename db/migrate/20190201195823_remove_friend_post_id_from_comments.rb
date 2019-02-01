class RemoveFriendPostIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :friend_post_id
  end
end
