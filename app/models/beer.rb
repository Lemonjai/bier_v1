class Beer < ApplicationRecord
  has_many :categorizations
  has_many :beertype, through: :categorizations
  has_many :colour, through: :categorizations
end
