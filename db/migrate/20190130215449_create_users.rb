class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :city
      t.string :school
      t.string :work
      t.integer :exp

      t.timestamps
    end
  end
end
