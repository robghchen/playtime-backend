class AddFriendsLvlEnergyMaxEnergySpeedProfileImgCoverImgToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :friends, :integer, array: true, default: []
    add_column :users, :lvl, :integer
    add_column :users, :energy, :integer
    add_column :users, :max_energy, :integer
    add_column :users, :speed, :integer
    add_column :users, :profile_img, :string
    add_column :users, :cover_img, :string
  end
end
