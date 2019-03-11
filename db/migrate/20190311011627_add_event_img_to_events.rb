class AddEventImgToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :event_img, :string
  end
end
