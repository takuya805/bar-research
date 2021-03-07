class Plan < ApplicationRecord
  belongs_to :user
  with_options presence: true do
   validates :shop_name
   validates :start_time
  end
end
