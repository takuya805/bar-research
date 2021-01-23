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



  has_many :bookmarks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  attachment :image
  belongs_to :category
end
