class AddEnablePostsAndEnableSeatsToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :enable_posts, :boolean
    add_column :events, :enable_seats, :boolean
  end
end
