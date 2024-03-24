class Restaurant < ApplicationRecord

    CATEGORIES = ['chinese', 'italian', 'japanese', 'french', 'belgian'].freeze

  has_many :reviews, dependent: :destroy

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian),
                                    message: "%{value} is not a valid category" }
end
