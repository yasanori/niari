class Memory < ApplicationRecord
  belongs_to :user
  has_one :main_photo_users, class_name: 'Users', foreign_key: 'main_photo_id'
  mount_uploader :photo, ImageUploader
end
