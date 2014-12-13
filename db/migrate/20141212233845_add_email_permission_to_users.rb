class AddEmailPermissionToUsers < ActiveRecord::Migration
  def change
    add_column :users, :eamil_favorites, :boolean, default: false
  end
end
