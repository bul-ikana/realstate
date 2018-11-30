class CreateProperties < ActiveRecord::Migration[5.2]
  def change
    create_table :properties do |t|
      t.references :project, foreign_key: true
      t.string :sku
      t.text :description
      t.float :price
      t.string :property_type
      t.string :photo
      t.string :status

      t.timestamps
    end
  end
end
