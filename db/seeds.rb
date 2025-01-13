# frozen_string_literal: true

# Xóa dữ liệu cũ trước khi seed
Product.destroy_all
Category.destroy_all
Table.destroy_all

puts 'Đã xóa dữ liệu cũ.'

# Tạo dữ liệu cho bảng categories
categories = [
  { name: 'Coffee', description: 'Các loại cà phê thơm ngon' },
  { name: 'Tea', description: 'Các loại trà thanh mát' },
  { name: 'Desserts', description: 'Các món tráng miệng ngọt ngào' },
  { name: 'Juices', description: 'Các loại nước ép tươi ngon' }
]

categories.each do |category|
  Category.create!(category)
end

puts "Đã tạo #{Category.count} danh mục sản phẩm."

# Tạo dữ liệu cho bảng products
products = [
  { name: 'Espresso', description: 'Cà phê Espresso đậm đà', price: 2.5,
    category_id: Category.find_by(name: 'Coffee').id },
  { name: 'Latte', description: 'Cà phê Latte béo ngậy', price: 3.0,
    category_id: Category.find_by(name: 'Coffee').id },
  { name: 'Green Tea', description: 'Trà xanh tươi mát', price: 2.0,
    category_id: Category.find_by(name: 'Tea').id },
  { name: 'Cheesecake', description: 'Bánh phô mai ngon ngọt', price: 4.0,
    category_id: Category.find_by(name: 'Desserts').id },
  { name: 'Orange Juice', description: 'Nước ép cam nguyên chất', price: 2.5,
    category_id: Category.find_by(name: 'Juices').id }
]

products.each do |product|
  Product.create!(product)
end

puts "Đã tạo #{Product.count} sản phẩm."

# Tạo dữ liệu cho bảng tables
10.times do |i|
  Table.create!(
    name: "Bàn số #{i + 1}",
    capacity: [2, 4, 6, 8].sample,
    status: 'available' # Mặc định tất cả các bàn đều trống
  )
end

puts "Đã tạo #{Table.count} bàn trong quán."
