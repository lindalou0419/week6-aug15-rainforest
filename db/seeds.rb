# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create!(name: 'Muji Pens', description: 'A set of 12 multi-coloured Muji Gel Ink Ballpoint Pens 0.38mm', price_in_cents: '1100')

Product.create!(name: 'Rilakkuma Plushie', description: 'Rilakkuma plush doll. Size 18.5x14x8cm', price_in_cents: '1900')

Product.create!(name: 'Logitech Wireless Mouse M325', description: 'Super Engery Saving, available in silver/black colour', price_in_cents: '1600')