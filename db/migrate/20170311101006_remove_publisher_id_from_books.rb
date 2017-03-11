class RemovePublisherIdFromBooks < ActiveRecord::Migration[5.0]
  def change
    remove_column :books, :publisher_id, :integer
  end
end
