# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Bunker.destroy_all
User.destroy_all
Feature.destroy_all

features = [
  Feature.create!(name: "Solar Power", description: "Power from the sun makes everything fun.", fa_icon: "fa-sun-o"),
  Feature.create!(name: "Heating", description: "When it gets cold, got to stay bold.", fa_icon: "fa-thermometer-three-quarters"),
  Feature.create!(name: "Wi-Fi", description: "Surf the net during the apocalypse.", fa_icon: "fa-wifi"),
  Feature.create!(name: "Private Accomodation", description: "Be selfish - have the bunker to yourself.", fa_icon: "fa-bed"),
  Feature.create!(name: "Fresh Water", description: "Connected to a fresh water source.", fa_icon: "fa-tint"),
  Feature.create!(name: "Personal Chef", description: "Comes equipped with personal robo-chef", fa_icon: "fa-cutlery")
]

pictures = [
  'https://assets.atlasobscura.com/media/W1siZiIsInVwbG9hZHMvcGxhY2VfaW1hZ2VzL2RlZTY5ZDAyMzg4OWY0YTYxZTRkMTc1YmExZTY4YjJkY2JhZWY2ZTcuanBnIl0sWyJwIiwidGh1bWIiLCJ4MzkwPiJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA4MSAtYXV0by1vcmllbnQiXV0/dee69d023889f4a61e4d175ba1e68b2dcbaef6e7.jpg',
  'https://assets.atlasobscura.com/media/W1siZiIsInVwbG9hZHMvcGxhY2VfaW1hZ2VzLzNhZmI0YzNlYTNjNzFiMjYwYzBjYWQwMzNmNGNiM2IwZjViMTBkMGIuanBnIl0sWyJwIiwidGh1bWIiLCJ4MzkwPiJdLFsicCIsImNvbnZlcnQiLCItcXVhbGl0eSA4MSAtYXV0by1vcmllbnQiXV0/3afb4c3ea3c71b260c0cad033f4cb3b0f5b10d0b.jpg',
  'http://www.telegraph.co.uk/content/dam/men/2015/11/18/bunker-xlarge_trans_NvBQzQNjv4BqqVzuuqpFlyLIwiB6NTmJwfSVWeZ_vEN7c6bHu2jJnT8.jpg',
  'https://i.ytimg.com/vi/_vmZeB3wVZQ/hqdefault.jpg',
  'https://a0.muscache.com/im/pictures/b1efaf9e-3d62-4e95-aae5-96f087dbb429.jpg?aki_policy=x_large',
  'https://a0.muscache.com/im/pictures/f8fa4bbf-e4c0-4c94-8248-7f58e1c20131.jpg?aki_policy=x_large',
  'https://a0.muscache.com/im/pictures/b1efaf9e-3d62-4e95-aae5-96f087dbb429.jpg?aki_policy=x_large',
  'https://a0.muscache.com/im/pictures/f8fa4bbf-e4c0-4c94-8248-7f58e1c20131.jpg?aki_policy=x_large',
  'http://www.zerohedge.com/sites/default/files/images/user5/imageroot/2015/11/Swimming-pool-and-underground-garden-1200x775.jpg',
  'http://cdn.cnn.com/cnnnext/dam/assets/170320154122-vivos-x-point-2.jpg',
  'http://www.slate.com/content/dam/slate/blogs/browbeat/2016/04/11/how_unbreakable_kimmy_schmidt_s_bunker_was_designed/schmidt2.jpeg.CROP.promo-xlarge2.jpeg',
  'http://static3.businessinsider.com/image/546396e96da811f741831368-1200-804/bunker-entrance.jpg',
  'https://i.pinimg.com/originals/a9/cc/fd/a9ccfd413a89fb74c50fd072a68f421c.jpg',
  'https://blazepress.com/.image/t_share/MTI4OTkzMjg2MDI2NDM5Mjk5/4.jpg',
  'http://cdn.cnn.com/cnnnext/dam/assets/170307122428-vivos-europa-one-germany-full-169.jpg',
  'https://www.unilad.co.uk/wp-content/uploads/2016/10/15125UNILAD-imageoptim-9955519384_cfb8ca0188_b.jpg',
  'http://media.topito.com/wp-content/uploads/2015/09/abri1.jpg'
]

addresses = [
  "16 Ladeira da Gloria",
  "33 Pheng Geck Road",
  "1109 E 93 street",
  "Ladeira da Glória, 26",
  "100 Century Ave, LuJiaZui",
  "11 Wall St",
  "Jl. Beji Ayu No.8",
  "501 Yincheng Middle Rd",
  "6 Rue de l'Amiral de Coligny",
  "16 villa gaudlet, paris"
]

new_user = User.new(email: 'bunkerboy@gmail.com', password: 'bunky123')
new_user.save!

7.times do
  urls = [ pictures.sample, pictures.sample, pictures.sample ]
  bunker = Bunker.new(
    name: "#{Faker::Zelda.location} Bunker",
    description: "#{Faker::LordOfTheRings.character}-style #{Faker::GameOfThrones.house} in #{Faker::LordOfTheRings.location}",
    detailed_description: "#{Faker::BossaNova.song} and #{Faker::Lorem.paragraphs}",
    price: rand(40..1000),
    size: rand(3000..10000),
    address: addresses.sample,
    user: new_user
    )
  p bunker
  bunker.features = features
  bunker.photo_urls = urls
  bunker.save!
  puts "======> created #{new_user.email} and #{bunker.name}"
end

new_user = User.new(email: 'bunkergirl@gmail.com', password: 'bunky123')
new_user.save!

7.times do
  urls = [ pictures.sample, pictures.sample, pictures.sample ]
  bunker = Bunker.new(
    name: "#{Faker::Zelda.location} Bunker",
    description: "#{Faker::LordOfTheRings.character}-style #{Faker::GameOfThrones.house} in #{Faker::LordOfTheRings.location}",
    detailed_description: "#{Faker::BossaNova.song} and #{Faker::Lorem.paragraphs}",
    price: rand(40..1000),
    size: rand(3000..10000),
    address: addresses.sample,
    user: new_user
    )
  p bunker
  bunker.features = features
  bunker.photo_urls = urls
  bunker.save!

  puts "======> created #{new_user.email} and #{bunker.name}"
end

  # 'https://i.pinimg.com/originals/a9/cc/fd/a9ccfd413a89fb74c50fd072a68f421c.jpg',
  # 'https://blazepress.com/.image/t_share/MTI4OTkzMjg2MDI2NDM5Mjk5/4.jpg',
  # 'http://cdn.cnn.com/cnnnext/dam/assets/170307122428-vivos-europa-one-germany-full-169.jpg',
  # 'https://www.unilad.co.uk/wp-content/uploads/2016/10/15125UNILAD-imageoptim-9955519384_cfb8ca0188_b.jpg',
  # 'http://media.topito.com/wp-content/uploads/2015/09/abri1.jpg',
  # 'http://static1.businessinsider.com/image/56b3b3ff6e97c62f008b4f64/if-youre-in-the-market-for-a-massive-cold-war-era-underground-nuclear-bunker-look-no-further.jpg',
  # 'https://www.paintballgames.co.uk/wp-content/uploads/2017/04/apocalypse-bunker-1_0-1280x720.jpg',
  # 'https://i.pinimg.com/originals/00/af/f1/00aff1b768eb41eba8a13e9cda3e1b3b.jpg',
  # 'http://2ht1mik98ka4dogie28vqc4y.wpengine.netdna-cdn.com/wp-content/uploads/2016/05/88-tactical-bunker-sleeping-quarters-004.jpg'
