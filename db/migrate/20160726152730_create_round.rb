  class CreateRound < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.belongs_to :game

      t.timestamps
    end
  end
end
