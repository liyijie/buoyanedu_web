class AddPhoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :phone, :string
    add_index :users, :phone,  unique: true
    remove_index :users, column: :email
    add_index :users, :email
  end
end
