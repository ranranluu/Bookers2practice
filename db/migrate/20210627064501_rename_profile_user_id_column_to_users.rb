class RenameProfileUserIdColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :profile_user_id, :profile_image_id
  end
end
