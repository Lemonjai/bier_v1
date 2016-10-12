class Colour < ApplicationRecord
  has_many :categorizations
  has_many :beers, through: :categorization
end
