class Shop < ApplicationRecord

  def self.search(search, word)
    if search == '1'
      @shops = Shop.where('name LIKE ? OR address LIKE ? OR station LIKE ?', "%#{word}%", "%#{word}%", "%#{word}%")
    elsif search == '2'
      @shops = Shop.where('station LIKE ?', "%#{word}%")
    elsif search == '3'
      @shops = Shop.where('name LIKE ?', "%#{word}%")
    end
  end

  has_many :reviews, dependent: :destroy
  attachment :image
  belongs_to :category
  enum budget: {
    '予算目安': 0,
    '3,000円以下': 1,
    '3,000円以上~4,000円未満': 2,
    '4,000円以上~5,000円未満': 3,
    '5,000円以上~10,000円未満': 4,
    '10,000円以上~20,000円未満': 5,
    '20,000円以上~': 6
  }
end
