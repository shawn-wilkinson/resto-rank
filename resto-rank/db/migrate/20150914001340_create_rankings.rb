class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.references :voter
      t.references :restaurant
      t.integer :rank

      t.timestamps null: false
    end
  end
end
