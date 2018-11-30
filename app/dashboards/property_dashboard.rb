require "administrate/base_dashboard"

class PropertyDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    project: Field::BelongsTo,
    id: Field::Number,
    sku: Field::String,
    description: Field::Text,
    price: Field::Number.with_options(decimals: 2, prefix: '$'),
    property_type: Field::Select.with_options(collection: Property::TYPES),
    photo: Field::String,
    status: Field::Select.with_options(collection: Property::STATUS),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :project,
    :sku,
    :description,
    :property_type,
    :price,
    :status,
    :photo,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :project,
    :sku,
    :description,
    :price,
    :property_type,
    :photo,
    :status,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :sku,
    :description,
    :price,
    :property_type,
    :photo,
    :status,
  ].freeze

  # Overwrite this method to customize how properties are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(property)
    property.sku
  end
end
