class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.datetime :date
      t.string :destination
      t.string :city
      t.string :state
      t.float :distance
      t.float :duration
      t.float :cost
      t.references :user

      t.timestamps
    end
    add_index :trips, :user_id
  end
end
