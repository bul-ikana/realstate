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
    price: Field::Number.with_options(decimals: 2),
    property_type: Field::String,
    photo: Field::String,
    status: Field::String,
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
    :id,
    :sku,
    :description,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :project,
    :id,
    :sku,
    :description,
    :price,
    :property_type,
    :photo,
    :status,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :project,
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
  # def display_resource(property)
  #   "Property ##{property.id}"
  # end
end
