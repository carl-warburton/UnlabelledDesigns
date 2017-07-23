10.times do |blog|
  Blog.create!(
      title: "My Blog Post #{blog}",
      body: "Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit,
             sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.
             Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit,
             sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.
             Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?
             Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas
             nulla pariatur?",
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
      title: "Illustrator #{skill}",
      percent_utilized: 15
  )
end

puts "5 skills created"

8.times do |product_item|
  Product.create!(
      title: "Product title: #{product_item}",
      description: "Illustrated Series",
      front_image: "http://placehold.it/200x200",
      back_image: "http://placehold.it/250x100"
  )
end

puts "9 product items created"

1.times do |product_item|
  Product.create!(
      title: "Product title: #{product_item}",
      description: "Embroided Series",
      front_image: "http://placehold.it/200x200",
      back_image: "http://placehold.it/250x100"
  )
end