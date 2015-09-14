class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :name
      t.string :creator_email
      t.string :description
      t.date :event_date
      t.time :event_time

      t.timestamps null: false
    end
  end
end
