class CreateChatDeletes < ActiveRecord::Migration[5.2]
  def change
    create_table :chat_deletes do |t|
      t.integer :chat_id, null: false
      t.integer :user_id, null: false
      t.timestamps
    end
  end
end
