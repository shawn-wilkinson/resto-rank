class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.references :user
      t.references :poll

      t.timestamps null: false
    end
  end
end
