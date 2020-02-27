
# products = Product.all

# products.each do |product|
#   image = Image.new(url: product.image_url, product_id: product.id)
#   image.save
# end


Product.all.each { |product| Image.create(url: product.image_url, product_id: product.id) }