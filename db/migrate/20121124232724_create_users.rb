class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :oauth_key
      t.string :oauth_secret

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
