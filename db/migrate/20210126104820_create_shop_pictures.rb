class CreateShopPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_pictures do |t|
      t.integer :shop_id, null: false
      t.string :image_id

      t.timestamps
    end
  end
end
