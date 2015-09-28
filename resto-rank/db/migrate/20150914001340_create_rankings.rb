class CreateRankings < ActiveRecord::Migration
  def change
    create_table :rankings do |t|
      t.references :user
      t.references :option
      t.integer :rank

      t.timestamps null: false
    end
  end
end
