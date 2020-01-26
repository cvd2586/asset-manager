class AddUserToAssets < ActiveRecord::Migration[5.2]
  def change
    add_column :assets, :user_id, :integer
  end
end
