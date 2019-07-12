class RemoveTprofileImageIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :tprofile_image_id, :string
  end
end
