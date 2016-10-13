class Winecategory < ApplicationRecord
  belongs_to :winery, optional: true
  belongs_to :winetype, optional: true
  belongs_to :wine
end
