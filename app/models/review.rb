class Review < ApplicationRecord
  belongs_to :shop

  attachment :image
  belongs_to :user
  has_many :favorites, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

end