Category.create!([
  {name: "Wearable"},
  {name: "Cheap"},
  {name: "Collecters"}
])
Image.create!([
  {url: "https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3386000/altimages/ff_3386907-ea9bed631a58b0ebb7adalt1_full.jpg&w=900", product_id: 2},
  {url: "https://img.bleacherreport.net/img/images/photos/002/594/048/ScreenShot2013-11-04at8.13.09PM_crop_north.png?1383625147&w=3072&h=2048", product_id: 5},
  {url: "https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3470000/altimages/ff_3470662-9154427882d3513fd8edalt1_full.jpg&w=900", product_id: 1},
  {url: "https://upload.wikimedia.org/wikipedia/commons/e/ec/Paul_Konerko_on_August_10%2C_2011.jpg", product_id: 3},
  {url: "https://thehockeynews.com/wp-content/uploads/Patrick-Kane-celebrates-Chicago-Blackhawks-featured.jpg", product_id: 4},
  {url: "https://a.espncdn.com/photo/2017/0909/r256162_600x400_3-2.jpg", product_id: 1}
])
Order.create!([
  {user_id: 1, product_id: 3, quantity: 2, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 5, quantity: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, product_id: 2, quantity: 5, subtotal: "150.0", tax: "13.5", total: "163.5"},
  {user_id: 1, product_id: 1, quantity: 2, subtotal: "250.0", tax: "22.5", total: "272.5"},
  {user_id: 1, product_id: 1, quantity: 1, subtotal: "250.0", tax: "22.5", total: "272.5"},
  {user_id: 1, product_id: 3, quantity: 2, subtotal: "500.0", tax: "45.0", total: "545.0"},
  {user_id: 1, product_id: 4, quantity: 2, subtotal: "600.0", tax: "54.0", total: "654.0"},
  {user_id: 1, product_id: 5, quantity: 3, subtotal: "105.0", tax: "9.45", total: "114.45"},
  {user_id: 2, product_id: 5, quantity: 3, subtotal: "105.0", tax: "9.45", total: "114.45"},
  {user_id: 2, product_id: 1, quantity: 1, subtotal: "250.0", tax: "22.5", total: "272.5"},
  {user_id: 2, product_id: 5, quantity: 2, subtotal: "70.0", tax: "6.3", total: "76.3"}
])
Product.create!([
  {name: "Khalil Mack Jersey", price: "150.0", description: "Replica jersey of Kahlil Mack from the Chicago Bears.", in_stock: true, supplier_id: 2},
  {name: "Cheese Grater Hat", price: "35.0", description: "Foam cheese grater hat, perfect to wear when the Chicago Bears take on the green bay packers.", in_stock: true, supplier_id: 1},
  {name: "Jose Abreu Jersey", price: "250.0", description: "Authenic replica jersey worn by number 79 of the Chicago White Sox.", in_stock: true, supplier_id: 3},
  {name: "Signed Paul Konerko Bat", price: "500.0", description: "Signed game used bat by Paul Konerko of the Chicago White Sox.", in_stock: true, supplier_id: 1},
  {name: "Signed Patrick Kane Jersey", price: "300.0", description: "Game worn jersey signed by #88 Patrick Kane of the Chicago Blackhawks.", in_stock: true, supplier_id: 2}
])
ProductCategory.create!([
  {product_id: 2, category_id: 1},
  {product_id: 5, category_id: 1},
  {product_id: 1, category_id: 1},
  {product_id: 4, category_id: 1},
  {product_id: 3, category_id: 1},
  {product_id: 5, category_id: 2},
  {product_id: 4, category_id: 3},
  {product_id: 3, category_id: 3}
])
Supplier.create!([
  {name: "Nike", email: "support@nike.com", phone_number: "234 555 8674"},
  {name: "Majestic", email: "support@majestic.com", phone_number: "546 555 5802"},
  {name: "Reebok", email: "reebok.support@rebook.com", phone_number: "345 555 6782"}
])
User.create!([
  {name: "Dennis Reynolds", email: "goldengod@gmail.com", password_digest: "$2a$12$WofL1F/5PuqwqsMAZJzI0eWAz8HepZQuHlTVJWL2JSqUjSGqNhzeq", admin: false},
  {name: "Buffy Summers", email: "buffy@gmail.com", password_digest: "$2a$12$Fc2gvWKTsj7.BF6i6.qBI.MtnJBziODqPGdQtrhEMdzygIUljJEhq", admin: true}
])
