class Property < ApplicationRecord
  TYPES  = %W[Department House Land]
  STATUS = %W[Sold Available Separated]

  belongs_to :project
end
