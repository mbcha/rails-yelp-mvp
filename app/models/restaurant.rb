class Restaurant < ApplicationRecord
  SUPPORTED_CATEGORIES = %w[chinese italian japanese french belgian]

  has_many :reviews, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: SUPPORTED_CATEGORIES }
end
