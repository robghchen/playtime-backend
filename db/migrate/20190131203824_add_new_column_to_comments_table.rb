class AddNewColumnToCommentsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :player_post_id, :integer
    add_column :comments, :friend_post_id, :integer
  end
end
