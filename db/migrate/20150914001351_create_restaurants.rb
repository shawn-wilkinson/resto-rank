class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :yelp_id

      t.timestamps null: false
    end
  end
end
