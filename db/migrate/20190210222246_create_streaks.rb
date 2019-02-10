class CreateStreaks < ActiveRecord::Migration[5.2]
  def change
    create_table :streaks do |t|
      t.integer :player_id
      t.integer :friend_id
      t.integer :count
      t.references :activity, foreign_key: true

      t.timestamps
    end
  end
end
