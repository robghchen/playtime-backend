class ChangeEventsPriceIntegerToNumeric < ActiveRecord::Migration[5.2]
  def up
    change_column :events, :price, :decimal, :precision => 8, :scale => 2
  end

  def down
    change_column :events, :price, :integer
  end
end
