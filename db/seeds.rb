teado = Shop.create(name: "TeaDo", location: "145d Hester St")
tenren = Shop.create(name: "Ten Ren Tea", location: "75 Mott St")
kungfutea = Shop.create(name: "Kung Fu Tea", location: "73 Chrystie St")

raycohen = User.create(username: "raycohen")
kensin = User.create(username: "kensin")

ray_teado_review = Review.create(
  rating: 3,
  description: "nice shop, bubbles too small",
  user: raycohen,
  shop: teado)

ray_tenren_review = Review.create(
  rating: 2,
  description: "Too Far, lame covers",
  user: raycohen,
  shop: tenren)

ken_tenren_review = Review.create(
  rating: 4,
  description: "Good tea. On my way to bank.",
  user: kensin,
  shop: tenren)

ken_kungfu_review = Review.create(
  rating: 3,
  description: "Milky drinks. Close by.",
  user: kensin,
  shop: kungfutea)



