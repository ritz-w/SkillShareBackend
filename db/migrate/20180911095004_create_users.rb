class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :mod_name
      t.string :slack_username

      t.timestamps
    end
    add_index :users, :email, unique: true
    add_index :users, :slack_username, unique: true
  end
end
