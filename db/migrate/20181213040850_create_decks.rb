class CreateDecks < ActiveRecord::Migration[5.2]
  def change
    create_table :decks do |t|
      t.string :title
      t.integer :views
      t.decimal :price
      t.integer :author_id

      t.timestamps
    end
  end
end
