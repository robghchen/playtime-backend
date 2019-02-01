class RemovePlayerPostIdFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :player_post_id
  end
end
