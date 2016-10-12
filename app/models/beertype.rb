class Beertype < ApplicationRecord
  has_many :categorizations
  has_many :beer, through: :categorizations
end
