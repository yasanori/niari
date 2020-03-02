class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :entries, dependent: :destroy
  has_many :room, through: :entries
  has_many :memories, dependent: :destroy
  has_many :messages, dependent: :destroy

  validates :profile, length: { maximum: 200 }
  mount_uploader :image, ImageUploader
end
