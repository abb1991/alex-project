class CreatePlayer < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.belongs_to :game
      t.belongs_to :user
      t.integer :points, default: 0

      t.timestamps
    end
  end
end
