class AddLevelToUserDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :user_details, :level, :integer
  end
end
