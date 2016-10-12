class Categorization < ApplicationRecord
  belongs_to :brewery, optional: true
  belongs_to :colour, optional: true
  belongs_to :beertype, optional: true
  belongs_to :beer
end
