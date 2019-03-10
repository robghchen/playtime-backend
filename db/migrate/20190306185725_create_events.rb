class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :price
      t.datetime :date
      t.string :location
      t.string :description
      t.string :banner_img
      t.integer :user_id

      t.timestamps
    end
  end
end