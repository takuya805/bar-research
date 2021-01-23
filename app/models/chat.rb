class Chat < ApplicationRecord
  belongs_to :user
  belongs_to :room
  has_many :chat_deletes, dependent: :destroy
end
