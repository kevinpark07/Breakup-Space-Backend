class CreateSmsMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :sms_messages do |t|
      t.string :user_number
      t.string :message
    end
  end
end
