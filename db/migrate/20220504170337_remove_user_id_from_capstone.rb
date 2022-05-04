class RemoveUserIdFromCapstone < ActiveRecord::Migration[7.0]
  def change
    remove_column :capstones, :user_id
  end
end
