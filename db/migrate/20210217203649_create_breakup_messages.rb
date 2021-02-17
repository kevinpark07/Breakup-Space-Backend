class CreateBreakupMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :breakup_messages do |t|
      t.belongs_to :topic, null: false, foreign_key: true
      t.string :message
      t.string :tone
      t.string :subject

      t.timestamps
    end
  end
end
