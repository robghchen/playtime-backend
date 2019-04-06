class AddTicketImgToSeats < ActiveRecord::Migration[5.2]
  def change
    add_column :seats, :ticket_img, :string
  end
end
