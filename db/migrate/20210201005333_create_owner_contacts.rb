class CreateOwnerContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :owner_contacts do |t|
      t.integer :owner_id, null: false
      t.string :title, null: false
      t.text :message, null: false

      t.timestamps
    end
  end
end
