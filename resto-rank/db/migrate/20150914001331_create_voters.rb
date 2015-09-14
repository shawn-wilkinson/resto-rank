class CreateVoters < ActiveRecord::Migration
  def change
    create_table :voters do |t|
      t.references :poll
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
