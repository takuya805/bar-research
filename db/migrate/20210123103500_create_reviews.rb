class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :user_id, null: false
      t.integer :shop_id, null: false
      t.text :post, null: false
      t.float :star, null: false
      t.string :image_id

      t.timestamps
    end
  end
end
