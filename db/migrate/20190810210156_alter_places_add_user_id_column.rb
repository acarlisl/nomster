class AlterPlacesAddUserIdColumn < ActiveRecord::Migration[5.2]
  # Add a column in the Places table for the user that created the entry
  def change
    add_column :places, :user_id, :integer
    add_index :places, :user_id
  end
end
