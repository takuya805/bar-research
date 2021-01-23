class Category < ApplicationRecord
  has_many :shops, dependent: :destroy
end
