# Activerecord::Base.trans
User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(username: 'Tahj')
User.create!(username: 'Sam')
User.create!(username: 'Tony')

Artwork.create!(title: 'the scream', img_url: 'https://www.artnews.com/wp-content/uploads/2020/05/the-scream.jpg?w=1240')
Artwork.create!(artist_id: 1, title: 'Mona Lisa', img_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/1200px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg')
Artwork.create!(artist_id: 2, title: 'Starry Night', img_url: 'https://media.overstockart.com/optimized/cache/data/product_images/VG485-1000x1000.jpg')

ArtworkShare.create!(artwork_id:1, viewer_id: 3)
ArtworkShare.create!(artwork_id:2, viewer_id: 1)
