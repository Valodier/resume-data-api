class AddUserIdToSkill < ActiveRecord::Migration[7.0]
  def change
    add_column :skills, :user_id, :integer
  end
end
