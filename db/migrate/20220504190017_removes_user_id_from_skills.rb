class RemovesUserIdFromSkills < ActiveRecord::Migration[7.0]
  def change
    remove_column :skills, :user_id, :integer
  end
end
