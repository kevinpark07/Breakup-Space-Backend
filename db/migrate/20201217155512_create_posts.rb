class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.string :content
      t.string :date
      t.integer :up_votes
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
