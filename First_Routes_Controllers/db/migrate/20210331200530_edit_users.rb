class EditUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :email
    rename_column :users, :name, :username
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
