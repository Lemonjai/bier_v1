class Wine < ApplicationRecord
  has_many :winecategories
  has_many :winetype, through: :winecategories
  has_many :winery, through: :winecategories
end
