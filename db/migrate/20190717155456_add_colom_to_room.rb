class AddColomToRoom < ActiveRecord::Migration[5.2]
  def change
  	add_column :rooms, :category, :integer
  end
end
