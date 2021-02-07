class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  attachment :image
  has_many :user_rooms, dependent: :destroy
  has_many :chats, dependent: :destroy
  has_many :rooms, through: :user_rooms
  has_many :reviews, dependent: :destroy

  has_many :favorites, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :shops, through: :bookmarks, source: :shop

  has_many :active_relationships, class_name: "Relationship", foreign_key: :following_id
  has_many :followings, through: :active_relationships, source: :follower

  has_many :passive_relationships, class_name: "Relationship", foreign_key: :follower_id
  has_many :followers, through: :passive_relationships, source: :following

  def followed_by?(user)
    passive_relationships.find_by(following_id: user.id).present?
  end
  def self.guest
    find_or_create_by(email: ENV['TEST_USER']) do |user|
      user.password = ENV['TEST_PASSWORD']
    end
  end

  validates :name, presence: true

end

