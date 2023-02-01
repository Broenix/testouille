class Entertainment < ApplicationRecord
  has_many :consumptions

  validates :title, presence: true
  validates :entertainment, inclusion: ["film", "série", "jv"]
end
