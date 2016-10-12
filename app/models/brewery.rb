class Brewery < ApplicationRecord
  has_many :categorizations
  has_many :beers, through: :categorizations
end
