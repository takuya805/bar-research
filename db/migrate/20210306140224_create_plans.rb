class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :user_id, null: false
      t.integer :shop_id
      t.string :othershop
      t.datetime :start_time, null: false
      t.string :memo

      t.timestamps
    end
  end
end
