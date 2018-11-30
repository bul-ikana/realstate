# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
	first_name: Faker::Name.first_name,
	last_name:  Faker::Name.last_name,
	username:   'admin',
	password:   '123123',
	encrypted_password: '$2a$10$czfgsVnYjZ6w.dAhY2dQTOWQgCz4BkSBBBSXvAUs0d/IpYjoRVafy'
)

3.times do
	Project.create(
		name: Faker::Pokemon.move,
		city: Faker::Pokemon.location,
		user: User.first
	)
end

Project.find_each do |project|
	10.times do
		Property.create(
			sku:           Faker::Code.npi,
			description:   Faker::Lorem.sentence,
			project: 	   project,
			price:         Faker::Number.decimal(2),
			property_type: Property::TYPES.sample,
			status:   	   Property::STATUS.sample,
			photo:         Faker::LoremPixel.image
		)
	end
end
