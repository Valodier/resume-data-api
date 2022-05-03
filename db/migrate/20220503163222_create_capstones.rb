class CreateCapstones < ActiveRecord::Migration[7.0]
  def change
    create_table :capstones do |t|

      t.timestamps
    end
  end
end
