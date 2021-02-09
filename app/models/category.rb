class Category < ApplicationRecord
  has_many :shops, dependent: :destroy
  validates :category, presence: true
end
