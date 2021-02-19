class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.integer :user_id, null: false
      t.string :shop, null: false
      t.string :image_id
      t.string :content, null: false

      t.timestamps
    end
  end
end
