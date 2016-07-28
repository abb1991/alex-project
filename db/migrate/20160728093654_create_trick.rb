class CreateTrick < ActiveRecord::Migration
  def change
    create_table :tricks do |t|
      t.belongs_to :round
      t.belongs_to :player

      t.timestamps
    end
  end
end
