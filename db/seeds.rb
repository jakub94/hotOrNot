# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Image.delete_all
i1 = Image.create(title: 'PussyCat', url: 'http://bestanimalwallpapers.com/wp-content/uploads/2017/09/e38767b2d4005b865e1854c265e9ab7e.jpg')
i2 = Image.create(title: 'Rolf', url: 'https://cbsnews1.cbsistatic.com/hub/i/2015/06/27/93b1a34a-03fd-4c7e-9ed2-7cf46eccbe63/ugliest-dog-2015-478696466.jpg')
i3 = Image.create(title: 'Best Pet Picture Ever', url: "http://i.huffpost.com/gadgets/slideshows/3233/slide_3233_156651_large.jpg?1287510734167")
i4 = Image.create(title: 'Ugly ass dog', url: "http://static.manilasites.com/images/doc/samdog.jpg")


i1.ratings.create(value: +1)
i1.ratings.create(value: +1)

i2.ratings.create(value: -1)

i3.ratings.create(value: 1)
i3.ratings.create(value: 1)
i3.ratings.create(value: 1)
i3.ratings.create(value: 1)

i4.ratings.create(value: -1)
i4.ratings.create(value: -1)
i4.ratings.create(value: -1)
