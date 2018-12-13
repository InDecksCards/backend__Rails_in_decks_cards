class AddStackToFaces < ActiveRecord::Migration[5.2]
  def change
    add_column :faces, :stack, :integer, :default => 0
  end
end
