class CreateHand < ActiveRecord::Migration
  def change
    create_table :hands do |t|
      t.belongs_to :player
      t.belongs_to :round
      t.belongs_to :game

    end
  end
end
