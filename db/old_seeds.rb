Product.create!([
  {name: "Khalil Mack Jersey", price: "150.0", image_url: "https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3386000/altimages/ff_3386907-ea9bed631a58b0ebb7adalt1_full.jpg&w=900", description: "Replica jersey of Kahlil Mack from the Chicago Bears.", in_stock: true, supplier_id: nil},
  {name: "Cheese Grater Hat", price: "35.0", image_url: "https://img.bleacherreport.net/img/images/photos/002/594/048/ScreenShot2013-11-04at8.13.09PM_crop_north.png?1383625147&w=3072&h=2048", description: "Foam cheese grater hat, perfect to wear when the Chicago Bears take on the green bay packers.", in_stock: true, supplier_id: nil},
  {name: "Jose Abreu Jersey", price: "250.0", image_url: "https://fanatics.frgimages.com/FFImage/thumb.aspx?i=/productimages/_3470000/altimages/ff_3470662-9154427882d3513fd8edalt1_full.jpg&w=900", description: "Authenic replica jersey worn by number 79 of the Chicago White Sox.", in_stock: true, supplier_id: nil},
  {name: "Signed Paul Konerko Bat", price: "500.0", image_url: "https://upload.wikimedia.org/wikipedia/commons/e/ec/Paul_Konerko_on_August_10%2C_2011.jpg", description: "Signed game used bat by Paul Konerko of the Chicago White Sox.", in_stock: true, supplier_id: nil},
  {name: "Signed Patrick Kane Jersey", price: "300.0", image_url: "https://thehockeynews.com/wp-content/uploads/Patrick-Kane-celebrates-Chicago-Blackhawks-featured.jpg", description: "Game worn jersey signed by #88 Patrick Kane of the Chicago Blackhawks.", in_stock: true, supplier_id: nil}
])
Supplier.create!([
  {name: "Nike", email: "support@nike.com", phone_number: "234 555 8674"},
  {name: "Majestic", email: "support@majestic.com", phone_number: "546 555 5802"},
  {name: "Reebok", email: "reebok.support@rebook.com", phone_number: "345 555 6782"}
])
