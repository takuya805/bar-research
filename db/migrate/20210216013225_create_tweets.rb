class CreateTweets < ActiveRecord::Migration[5.2]
  def change
    create_table :tweets do |t|
      t.integer :user_id
      t.string :shop
      t.string :image_id
      t.string :content

      t.timestamps
    end
  end
end
