class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable #:confirmable
  attachment :image
  has_many :user_rooms, dependent: :destroy
  has_many :chats, dependent: :destroy
  has_many :rooms, through: :user_rooms

  has_many :favorites, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :shops, through: :bookmarks, source: :shop
end
