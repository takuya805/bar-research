class OwnerContact < ApplicationRecord
  belongs_to :owner

  with_options presence: true do
    validates :title
    validates :message
  end
end
