class Winecategory < ApplicationRecord
  belongs_to :winetype, optional: true
  belongs_to :wine
end
