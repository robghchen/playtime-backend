class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :comment
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
