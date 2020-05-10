# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Group.new(name: 'none').save(validate: false)

@g = Group.new(id: 2, name: 'sports')
@g.icon.attach(io: File.open('app/assets/images/category icons/sports.png'), filename: 'sports.png', content_type: 'image/png')
@g.save(validate: false)

@g = Group.new(id: 3, name: 'business')
@g.icon.attach(io: File.open('app/assets/images/category icons/business.png'), filename: 'business.png', content_type: 'image/png')
@g.save(validate: false)

@g = Group.new(id: 4, name: 'clothing')
@g.icon.attach(io: File.open('app/assets/images/category icons/clothing.png'), filename: 'clothing.png', content_type: 'image/png')
@g.save(validate: false)

@g = Group.new(id: 5, name: 'tools')
@g.icon.attach(io: File.open('app/assets/images/category icons/tools.png'), filename: 'tools.png', content_type: 'image/png')
@g.save(validate: false)

@g = Group.new(id: 6, name: 'vehicles')
@g.icon.attach(io: File.open('app/assets/images/category icons/vehicles.png'), filename: 'vehicles.png', content_type: 'image/png')
@g.save(validate: false)

@g = Group.new(id: 7, name: 'school')
@g.icon.attach(io: File.open('app/assets/images/category icons/school.png'), filename: 'school.png', content_type: 'image/png')
@g.save(validate: false)
