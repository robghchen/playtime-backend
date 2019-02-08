class AddExpLimitToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :exp_limit, :integer
  end
end
