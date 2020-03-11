class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :entries, dependent: :destroy
  has_many :rooms, through: :entries
  has_many :memories, dependent: :destroy
  has_many :messages, dependent: :destroy

  acts_as_followable
  acts_as_follower

  def self.search(search)
    return Users..where(camera_id: 1).page(params[:page]).per(15) unless search
    User.where('name LIKE(?)', "%#{search}%")
  end

  validates :profile, length: { maximum: 200 }
  mount_uploader :image, ImageUploader
end
