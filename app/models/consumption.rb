class Consumption < ApplicationRecord
  belongs_to :user, class_name: "User"
  belongs_to :entertainment

  mount_uploader :image, ImageUploader
  validates :image, presence: false
  validates :note, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10 }, allow_nil: true
end
