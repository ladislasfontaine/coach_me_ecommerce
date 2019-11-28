# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = []
## carts =
# orders = []
categories = []
items = []

10.times do
  user = User.create(email: Faker::Internet.email, password: "secret")
  # carts << Cart.create(user: user)
  # orders << Order.create(user: user)
  users << user
end
users << User.create!(email: "admin@yopmail.com", password: "adminadmin", is_admin: true)

categories_base = ["Fitness", "Nutrition", "Cross Training", "Vêtements", "Protéines", "Musculation"]
categories_base.each do |category|
  categories << Category.create(name: category)
end

items << Item.create!(
  title: "Rameur Racing Rower II",
  description: "Un rameur qui allie design, puissance, confort et fluidité pour un rapport qualité/prix imbattable ! Sa particularité : coupler la résistance de l'air avec celle magnétique permet une utilisation pour les couples ou les familles qui recherchent le confort du magnétique et la forte résistance de l'air.",
  price: 499.00,
  category: categories.sample,
  image_url: "items/rameur.png"
)
items << Item.create!(
  title: "Whey Protein",
  description: "Whey protéine Whey Protein TIBO INSHAPE : La Whey Protein d'InShape Nutrition est le produit idéal pour devenir ÉNORME et SEC comme Tibo InShape ! Chacun trouvera son bonheur grâce aux 3 saveurs proposées !",
  price: 24.90,
  category: categories.sample,
  image_url: "items/whey.png"
)
items << Item.create!(
  title: "T Shirt Crossfit",
  description: "T-shirts T Shirt Crossfit F.E.F REEBOK : La technologie SpeedWick apporte à ce modèle douceur et fraîcheur durant votre entrainement.",
  price: 17.95,
  category: categories.sample,
  image_url: "items/tshirt.png"
)
items << Item.create!(
  title: "Tapis de course Guépard 2.0",
  description: "Nouveau design, surface large de 48 x 150 cm, puissance en pic de 4 CV, 58 programmes, vitesse max de 20 km/h, 15 niveaux d'inclinaison, 6 points d'amortis sur la surface de course + 2 amortis 'System Flex', ceinture thoracique incluse, support tablette tactile, pliable, branchement MP3.",
  price: 749.00,
  category: categories.sample,
  image_url: "items/tapis_de_course.png"
)

items << Item.create!(
  title: "Haltère en acier",
  description: "Haltères en acier et couvertes d'un revêtement intégral en plastique soft et anti-dérapant. Vendues à l'unité. Poids : 0,5-1-2-3-4-5 kg.",
  price: 5.00,
  category: categories.sample,
  image_url: "items/haltere.png"
)

items << Item.create!(
  title: "OPTIMUM NUTRITION 100 % Casein Gold",
  description: "Protéines 100 % Casein Gold Standard OPTIMUM NUTRITION :
Vous recherchez une protéine qui assure 24/24 : tous les jours, toutes les nuits, toutes les semaines et tous les mois ?",
  price: 30.90,
  category: categories.sample,
  image_url: "items/goldstandard.png"
)

items << Item.create!(
  title: "Tapis de course Guépard 2.0",
  description: "Nouveau design, surface large de 48 x 150 cm, puissance en pic de 4 CV, 58 programmes, vitesse max de 20 km/h, 15 niveaux d'inclinaison, 6 points d'amortis sur la surface de course + 2 amortis 'System Flex', ceinture thoracique incluse, support tablette tactile, pliable, branchement MP3.",
  price: 35.00,
  category: categories.sample,
  image_url: "items/vegan.png"
)

items << Item.create!(
  title: "Tria TrainerClub Sport",
  description: "Banc de musculation Tria Trainer Club Sport NOHRD : Design épuré, avec des matériaux nobles, ce banc Tria Trainer se décline en 3 positions.",
  price: 395.00,
  category: categories.sample,
  image_url: "items/Tria_TrainerClub_Sport.png"
)

items << Item.create!(
  title: "Banc MultiPositions",
  description: "Banc de musculation Banc MultiPositions HEUBOZEN : Banc ajustable Multifonctions pour le travail du Haut du corps.",
  price: 94.00,
  category: categories.sample,
  image_url: "items/Banc_multi.png"
)

items << Item.create!(
  title: "Foam Roller",
  description: "Massage récupération Foam Roller ZIVA : Idéal pour vos séances de récupération, le Foam Roller est le compagnon parfait.",
  price: 24.00,
  category: categories.sample,
  image_url: "items/rouleau.png"
)

items << Item.create!(
  title: "Corde à sauter nylon",
  description: "Corde à sauter en nylon tressé très résistant de 8 mm de diamètre, pour une utilisation sur toutes surfaces. Possibilité de les lester.",
  price: 18.50,
  category: categories.sample,
  image_url: "items/corde.png"
)

items << Item.create!(
  title: "Set musculation 150 kg",
  description: "Disques caoutchoutés
Barres en acier chromé avec zone de portée antiglisse
Charge maximum des barres : 120 kg",
  price: 279.17,
  category: categories.sample,
  image_url: "items/disques.png"
)

items << Item.create!(
  title: "Barre courte 50 mm",
  description: "Barre courte, longueur réelle 50 cm.Alésage : 50 mm.Diamètre de la prise en main : 26 mmZone d'accueil des disques",
  price: 152.20,
  category: categories.sample,
  image_url: "items/barre_courte.png"
)

items << Item.create!(
  title: "Barre biceps",
  description: "Barre en V avec axe pivotant pour un confort optimal. Zone de tenue striée et confortable diamètre 28 mm pour une bonne prise en main.",
  price: 54.00,
  category: categories.sample,
  image_url: "items/barre_tirage.png"
)

items << Item.create!(
  title: "Disque Bumper Casal 51mm de 5 à 25 kg",
  description: "Tous les disques font le même diamètre ce qui fait que ça rend les disques plus solides en cas de lâcher au sol, car la masse est répartie sur l'ensemble des disques et non pas sur le plus grand.",
  price: 22.50,
  category: categories.sample,
  image_url: "items/poids.png"
)


items << Item.create!(
  title: "Cadre avec contrepoids LAROQ Tannac",
  description: "Cadre guidé appelé aussi Multipower de gamme professionnelle vous permet d'effectuer une large gamme d'exercices de squat, de développés avec une barre guidée très sécuritaire.",
  price: 2544.30,
  category: categories.sample,
  image_url: "items/cadre.png"
)

items << Item.create!(
  title: "Sandbag army",
  description: "Sac lesté, appelé aussi functionnal bag, ou heavy bag, ce sac permet de travailler une multitudes d'exercices.",
  price: 54.13,
  category: categories.sample,
  image_url: "items/sandbag.png"
)

items << Item.create!(
  title: "Médicine call classique de 1 à 5kg",
  description: "aire de slide-discs à poser sous vos pieds.Permet de travailler aussi bien l'endurance, le système cardiovasculaire, que le renforcement musculaire.",
  price: 12.30,
  category: categories.sample,
  image_url: "items/medicine_ball.png"
)

items << Item.create!(
  title: "Rack Multi-Press BodySolid - épi d'alésage 28mm",
  description: "Rack Multi-Press à 14 positions. Permet de travailler avec toute barre de 220 cm de long.",
  price: 432.50,
  category: categories.sample,
  image_url: "items/rack_multi.png"
)


items << Item.create!(
  title: "Machine Butterfly BH Hi-Power",
  description: "Machine Butterfly BH L270PB Hi-Power chargée à 90 kg. Elle vous permet, en position assise de travailler vos pectoraux.",
  price: 2306.67,
  category: categories.sample,
  image_url: "items/butterfly.png"
)
