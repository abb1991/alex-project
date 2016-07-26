class CreateCard < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :suit
      t.string :value
      t.belongs_to :deck
      t.belongs_to :hand

      t.timestamps
    end
  end
end
