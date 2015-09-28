class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.references :restaurant
      t.references :poll

      t.timestamps null: false
    end
  end
end
