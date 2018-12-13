class CreateFaces < ActiveRecord::Migration[5.2]
  def change
    create_table :faces do |t|
      t.references :card, foreign_key: true
      t.string :question
      t.string :a1
      t.string :a2
      t.string :a3
      t.string :a4
      t.string :a5
      t.string :a6

      t.timestamps
    end
  end
end
