class CreateBreakupMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :breakup_messages do |t|
      t.string :message

      t.timestamps
    end
  end
end
