class CreateSeats < ActiveRecord::Migration[5.2]
  def change
    create_table :seats do |t|
      t.string :position
      t.integer :user_id
      t.belongs_to :event, foreign_key: true

      t.timestamps
    end
  end
end
