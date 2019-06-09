class AddLastAnsweredToUserDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :user_details, :last_answered, :datetime
  end
end
