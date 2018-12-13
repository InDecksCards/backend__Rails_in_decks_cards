class CreateFlags < ActiveRecord::Migration[5.2]
  def change
    create_table :flags do |t|
      t.references :card, foreign_key: true
      t.string :note

      t.timestamps
    end
  end
end
