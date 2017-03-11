class AddNumberToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :number, :integer
  end
end
