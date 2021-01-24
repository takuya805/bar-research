class Review < ApplicationRecord
  belongs_to :shop

  attachment :image
  belongs_to :user
end
