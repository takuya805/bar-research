class ShopPicture < ApplicationRecord
  belongs_to :shop
  attachment :image
end
