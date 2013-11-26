class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :password, :string
    add_column :users, :email, :string
    add_column :users, :blocked, :boolean
    add_column :users, :xp, :int
  end
end
