class PhotographWork < ApplicationRecord
  belongs_to :photographer, class_name: 'User', foreign_key: "photographer_id"
  belongs_to :prefecture
end
