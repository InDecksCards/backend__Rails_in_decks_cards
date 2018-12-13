class AddResolvedBooleanToFlags < ActiveRecord::Migration[5.2]
  def change
    add_column :flags, :resolved, :boolean, :default => false
  end
end
