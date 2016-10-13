class Winery < ApplicationRecord
  has_many :winecategories
  has_many :wines, through: :winecategories
end
