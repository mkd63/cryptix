class CreateUserDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :user_details do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :contactno
      t.string :password

      t.timestamps
    end
  end
end
