class Product < ActiveRecord::Base

  # validate that we have a name
  validates :name, presence: true
  # validate that the name is unique
  validates :name, uniqueness: true
  # validate that the name has at least 3 characters.
  validates :name, length: {minimum: 3}

  # validate that the price is a number 
  validates :price, numericality: true
  # validate that the format is correct, dd.dd
  validates :price, format: { :with => /\A\d+\.\d{2}\z/}
end
