class CreateCard < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :suit
      t.string :value
      t.boolean :played, default: false
      t.belongs_to :trick
      t.belongs_to :deck
      t.belongs_to :hand

      t.timestamps
    end
  end
end
