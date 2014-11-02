class AddAdditionalRoleAttributes < ActiveRecord::Migration
  def up
    add_column :roles, :foreground, :integer, :default => 0
    add_column :roles, :background, :integer, :default => 0
  end

  def down
    remove_column :roles, :foreground
    remove_column :roles, :background
  end
end
