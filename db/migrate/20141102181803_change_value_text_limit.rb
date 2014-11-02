class ChangeValueTextLimit < ActiveRecord::Migration
  def up
    change_column :configuration_parameters, :value, :text, :limit => 16777215
  end

  def down
    change_column :configuration_parameters, :value, :text, :limit => 255
  end
end
