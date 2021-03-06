class CreateCard < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :suit
      t.string :number
      t.boolean :played, default: false
      t.integer :point_value, default: 0
      t.string :card_pic
      t.belongs_to :trick
      t.belongs_to :deck
      t.belongs_to :hand
      t.belongs_to :player

      t.timestamps
    end
  end
end
