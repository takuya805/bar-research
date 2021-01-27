class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.integer :category_id, null: false
      t.integer :owner_id, null: false
      t.string :name, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.float :latitude
      t.float :longitude
      t.string :station, null: false
      t.string :phone, null: false
      t.integer :holiday, null: false
      t.integer :budget, null: false
      t.integer :seat, null: false
      t.string :explain, null: false
      t.string :hplink
      t.boolean :booking, default: true
      t.string :open_time, null: false
      t.string :close_time, null: false
      t.timestamps
    end
  end
end
