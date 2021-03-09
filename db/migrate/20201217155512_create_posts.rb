class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :image
      t.string :content
      t.date :date
      t.time :time
      t.integer :up_votes
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
