class Tweet < ApplicationRecord
  belongs_to :user
  attachment :image
  has_many :favorites, dependent: :destroy
  has_many :comments, dependent: :destroy

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def avg_score
    if comments.empty?
      0.0
    else
     comments.average(:score).round(1).to_f
    end
  end
  with_options presence: true do
    validates :shop
    validates :content
  end
end
