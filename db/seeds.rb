# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.delete_all
Product.create!(title: 'head first',
  description:
    %{</p>
	  <em>test</em>
	  Head First is a series of introductory instructional books to many topics, published by O'Reilly Media. It stresses an unorthodox, visually intensive, reader-involving combination of puzzles, jokes, nonstandard design and layout, and an engaging, conversational style to immerse the reader in a given topic.
      </p>},
  image_url: 'lrg.jpg',
  price: 26)
	
	