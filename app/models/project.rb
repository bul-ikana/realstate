class Project < ApplicationRecord
  belongs_to :user
  has_many :properties

  def sold
  	properties.where(status: 'Sold').map(&:price).reduce(0, :+)
  end
end
