class AddRankToUserDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :user_details, :rank, :integer
  end
end
