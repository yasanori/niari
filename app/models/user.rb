class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  mount_uploader :image, ImageUploader
  validates :profile, length: { maximum: 200 }
  validates :name, presence: true

  has_many :entries, dependent: :destroy
  has_many :rooms, through: :entries
  has_many :memories, dependent: :destroy
  has_many :messages, dependent: :destroy
  belongs_to :prefecture, optional: true

  acts_as_followable
  acts_as_follower

  def self.search(search)
    return Users.all unless search
    User.where('name LIKE(?)', "%#{search}%")
  end

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.name = "Guest User"
    end
  end


end
