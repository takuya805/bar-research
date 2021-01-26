class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.integer :category_id, null: false
      t.integer :owner_id, null: false
      t.string :name, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.string :station, null: false
      t.string :phone, null: false
      t.string :holiday, null: false
      t.integer :budget, null: false
      t.integer :seat, null: false
      t.string :explain, null: false
      t.string :hplink
      t.boolean :booking, default: false
      t.boolean :is_deleted, default: false
      t.timestamps
    end
  end
end
