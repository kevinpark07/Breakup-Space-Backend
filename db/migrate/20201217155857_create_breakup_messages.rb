class CreateBreakupMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :breakup_messages do |t|
      t.string :message
      t.string :theme

      t.timestamps
    end
  end
end
