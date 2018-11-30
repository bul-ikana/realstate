class Property < ApplicationRecord
  validates :sku, :price, presence: true

  TYPES  = %W[Department House Land]
  STATUS = %W[Sold Available Separated]

  belongs_to :project
end
