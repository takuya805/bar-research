class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.integer :user_id, null: false
      t.string :shop_name, null: false
      t.datetime :start_time, null: false
      t.string :memo

      t.timestamps
    end
  end
end
