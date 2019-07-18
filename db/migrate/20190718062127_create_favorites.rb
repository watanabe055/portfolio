class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :users, foreign_key: true
      t.references :rooms, foreign_key: true

      t.timestamps
      t.index [:user_id, :rooms_id], unique: true
    end
  end
end
