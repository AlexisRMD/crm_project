class Product < ApplicationRecord
  belongs_to :category
  
  validates :name, presence: true
  validates :category, presence: true
  validates :price, comparison: {greater_than_or_equal_to: 0}

end
