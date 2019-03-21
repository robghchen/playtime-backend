class AddUsernameToSeats < ActiveRecord::Migration[5.2]
  def change
    add_column :seats, :username, :string
  end
end
