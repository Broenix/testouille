class Entertainment < ApplicationRecord
  has_many :consumptions

  validates :title, presence: true
  # validates :type, inclusion: ["film", "série", "jv"]
end
