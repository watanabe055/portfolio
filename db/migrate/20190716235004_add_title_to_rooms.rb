class AddTitleToRooms < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :title, :string
    add_column :rooms, :detail, :string
  end
end
