class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.integer :post_count
      t.integer :post_max
      t.integer :comment_count
      t.integer :comment_max
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
