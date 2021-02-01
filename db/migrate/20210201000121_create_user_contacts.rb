class CreateUserContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :user_contacts do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.text :message, null: false

      t.timestamps
    end
  end
end
