class Review < ApplicationRecord
  belongs_to :shop

  attachment :image
  belongs_to :user
 
  with_options presence: true do
    validates :title
    validates :post
    validates :star
  end
end
