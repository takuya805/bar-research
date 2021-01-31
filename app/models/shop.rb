class Shop < ApplicationRecord

  scope :search_by_keyword, -> (search, word) {
    shop = if search == '1'
      Shop.where('name LIKE ? OR address LIKE ? OR station LIKE ?', "%#{word}%", "%#{word}%", "%#{word}%")
    elsif search == '2'
      Shop.where('station LIKE ?', "%#{word}%")
    elsif search == '3'
      Shop.where('name LIKE ?', "%#{word}%")
    end
    shop if shop.present?
  }

  # def self.search(search, word)
  #   if search == '1'
  #     @shops = Shop.where('name LIKE ? OR address LIKE ? OR station LIKE ?', "%#{word}%", "%#{word}%", "%#{word}%")
  #   elsif search == '2'
  #     @shops = Shop.where('station LIKE ?', "%#{word}%")
  #   elsif search == '3'
  #     @shops = Shop.where('name LIKE ?', "%#{word}%")
  #   end
  # end

  has_many :reviews, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  belongs_to :category
  belongs_to :owner
  has_many :shop_pictures, dependent: :destroy
  accepts_attachments_for :shop_pictures, attachment: :image
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  enum budget: {
    '予算目安を選択してください': 0,
    '3,000円以下': 1,
    '3,000円以上~4,000円未満': 2,
    '4,000円以上~5,000円未満': 3,
    '5,000円以上~10,000円未満': 4,
    '10,000円以上~20,000円未満': 5,
    '20,000円以上~': 6
  }

  enum holiday: {
    '定休日を選択して下さい': 0,
    '月曜日': 1,
    '火曜日': 2,
    '水曜日': 3,
    '木曜日': 4,
    '金曜日': 5,
    '土曜日': 6,
    '日曜日': 7,
    '日曜日、祝日': 8,
    '日曜日、月曜日、祝日': 9,
    '特に無し': 10
  }

  def bookmarked_by?(user)
    bookmarks.where(user_id: user.id).exists?
  end
end
