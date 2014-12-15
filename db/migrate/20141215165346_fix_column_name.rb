class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :eamil_favorites, :email_favorites
  end
end
