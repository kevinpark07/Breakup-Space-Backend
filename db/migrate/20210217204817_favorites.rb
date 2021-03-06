class Favorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :breakup_message, null: false, foreign_key: true

      t.timestamps
    end
  end
end
