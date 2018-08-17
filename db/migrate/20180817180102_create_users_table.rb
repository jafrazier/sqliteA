class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :password
      t.string :email
      t.string :created_at
      t.string :upadated_at
    end
  end
end
