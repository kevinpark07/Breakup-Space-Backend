class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :username
      t.string :password
      t.string :profile_image
      t.integer :age
      t.string :relationship_status

      t.timestamps
    end
  end
end
