class AddProfileUserIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :profile_user_id, :string
  end
end
