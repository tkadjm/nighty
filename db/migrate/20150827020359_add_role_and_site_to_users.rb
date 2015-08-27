class AddRoleAndSiteToUsers < ActiveRecord::Migration
  def change
    add_column :users, :role, :string
    add_column :users, :site_id, :integer
  end
end
