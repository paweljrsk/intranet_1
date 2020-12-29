product_categories = (1..5).map do |i|
  ProductCategory.create!(name: "Category_#{i}")
end

types = (1..10).map do |i|
  ProductType.create!(product_category: product_categories[i % 5 - 1],
                      name: "Type_#{i}")
end

posts = (1..10).map do |i|
  Post.create!(
    product_type: types[i - 1],
    title: "title_#{i}",
    description: "Description #{i}",
    long_description: "Long description #{i}"
  )
end
