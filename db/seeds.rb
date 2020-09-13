Supplier.create!({ name: "Suthern Wine & Spirits", email: "wineandspirits@email.com", phone_number: "562-926-2000" })
Supplier.create!({ name: "Empire Merchants North LLC", email: "empire@email.com", phone_number: "555-666-7079" })

Product.create!({ name: "Captain Morgan", price: 30, description: "spiced rum", invientory: 100, supplier_id: 1 })
Product.create!({ name: "Tacante", price: 3, description: "beer", invientory: 100, supplier_id: 1 })
Product.create!({ name: "Scaia", price: 12, description: "red wine", invientory: 100, supplier_id: 2 })
Product.create!({ name: "Titos", price: 25, description: "vodka", invientory: 100, supplier_id: 2 })

Image.create!({ url: "https://static.vinepair.com/wp-content/uploads/2018/11/ntktecate_social.jpg", product_id: 1 })
Image.create!({ url: "https://products2.imgix.drizly.com/ci-tecate-michelada-diablo-f90da770471f9e7f.jpeg?auto=format%2Ccompress&fm=jpg&q=20", product_id: 2 })
Image.create!({ url: "https://products2.imgix.drizly.com/ci-tecate-michelada-diablo-f90da770471f9e7f.jpeg?auto=format%2Ccompress&fm=jpg&q=20", product_id: 3 })
Image.create!({ url: "https://products2.imgix.drizly.com/ci-tecate-michelada-diablo-f90da770471f9e7f.jpeg?auto=format%2Ccompress&fm=jpg&q=20", product_id: 4 })
