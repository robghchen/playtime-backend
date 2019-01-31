class AddNewColumnsToPostTable < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :player_id, :integer
    add_column :posts, :friend_id, :integer
  end
end
