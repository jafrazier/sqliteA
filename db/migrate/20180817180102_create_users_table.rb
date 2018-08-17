class CreateUsersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :name
      t.string :password_hash
      t.datetime :created_at
      t.datetime :upadated_at
    end
    add_index :users, :email, :unique: true
  end
end
