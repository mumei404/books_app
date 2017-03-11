class AddPublisherIdToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :publisher_id, :integer
  end
end
