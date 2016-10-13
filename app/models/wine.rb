class Wine < ApplicationRecord
  has_many :winecategories
  has_many :winetype, through: :winecategories
end
