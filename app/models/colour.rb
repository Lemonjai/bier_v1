class Colour < ApplicationRecord
  has_many :categorizations
  has_many :beer, through: :categorization
end
