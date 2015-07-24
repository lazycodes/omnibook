class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :provider
      t.string :uid
      t.string :email
      t.string :gender
      t.string :first_name

      t.timestamps null: false
    end
  end
end
