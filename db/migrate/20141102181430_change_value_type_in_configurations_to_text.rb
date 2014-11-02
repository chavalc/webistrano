class ChangeValueTypeInConfigurationsToText < ActiveRecord::Migration
  def up
    change_column :configuration_parameters, :value, :text
  end

  def down
    change_column :configuration_parameters, :value, :string
  end
end
