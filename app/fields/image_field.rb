require "administrate/field/base"

class ImageField < Administrate::Field::Base
  def photo
    data
  end
end
