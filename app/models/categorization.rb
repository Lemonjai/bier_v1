class Categorization < ApplicationRecord
  belongs_to :beertype
  belongs_to :beer
end
