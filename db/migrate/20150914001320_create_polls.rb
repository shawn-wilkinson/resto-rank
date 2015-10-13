class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :name
      t.string :description
      t.string :creator_id
      t.datetime :event_time

      t.timestamps null: false
    end
  end
end
