# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.where(id: 1).first_or_initialize.tap do |user|
	user.email = 'admin@concierge.com'
	user.password = '123456'
	user.password_confirmation = '123456'
	user.save
end

Introduction.where(id: 1).first_or_initialize.tap do |introduction|
	introduction.title = 'Welcome To Concierge'
	introduction.subtitle = 'Consulting and Accounting, PLLC'
	introduction.post_title = 'Concierge Consulting and Accounting, PLLC is a premier consulting and accounting firm in Scottsdale, Arizona.'
	introduction.description = 'We are a different type of consulting and accounting firm. Think of us as your personal business Concierge.
					We offer highly personalized services and are passionate about our clients, their needs and their successes./n
					We specialize in an extremely proactive and personal approach to all our accounting and consulting engagements.
					We offer our clients one-on-one attention on an as needed basis. With Concierge Consulting and Accounting,
					PLLC you will obtain the benefit of a strong financial team with leading experts in a plethora of industries at
					your disposal and on your timeline.
					We promise you the highest quality service that you deserve. We are here to help guide you in financial decisions,
					offer insight and advice, deeper analysis into your business and goals.'
	introduction.save
end	
