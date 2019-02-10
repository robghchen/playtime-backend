class AddFriendIdToActivity < ActiveRecord::Migration[5.2]
  def change
    add_column :activities, :friend_id, :integer
    rename_column :activities, :user_id, :player_id
  end
end
