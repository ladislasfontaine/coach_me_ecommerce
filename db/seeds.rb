# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = []
categories = []
items = []

10.times do
  users << User.create(email: Faker::Internet.email, password: "secret")
end

categories_base = ["Fitness", "Nutrition", "Cross Training", "Vêtements", "Protéines", "Musculation"]
categories_base.each do |category|
  categories << Category.create(name: category)
end

items << Item.create(
  title: "Rameur Racing Rower II", 
  description: "Un rameur qui allie design, puissance, confort et fluidité pour un rapport qualité/prix imbattable ! Sa particularité : coupler la résistance de l'air avec celle magnétique permet une utilisation pour les couples ou les familles qui recherchent le confort du magnétique et la forte résistance de l'air.", 
  price: 499.00
)
items << Item.create(
  title: "Whey Protein", 
  description: "Whey protéine Whey Protein TIBO INSHAPE : La Whey Protein d'InShape Nutrition est le produit idéal pour devenir ÉNORME et SEC comme Tibo InShape ! Chacun trouvera son bonheur grâce aux 3 saveurs proposées !", 
  price: 24.90
)
items << Item.create(
  title: "T Shirt Crossfit", 
  description: "T-shirts T Shirt Crossfit F.E.F REEBOK : La technologie SpeedWick apporte à ce modèle douceur et fraîcheur durant votre entrainement.", 
  price: 17.95
)
items << Item.create(
  title: "Tapis de course Guépard 2.0", 
  description: "Nouveau design, surface large de 48 x 150 cm, puissance en pic de 4 CV, 58 programmes, vitesse max de 20 km/h, 15 niveaux d'inclinaison, 6 points d'amortis sur la surface de course + 2 amortis 'System Flex', ceinture thoracique incluse, support tablette tactile, pliable, branchement MP3.", 
  price: 749.00
)
