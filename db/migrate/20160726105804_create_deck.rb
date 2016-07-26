class CreateDeck < ActiveRecord::Migration
  def change
    create_table :decks do |t|
      t.belongs_to :game
      t.belongs_to :round

      t.timestamps
    end
  end
end
