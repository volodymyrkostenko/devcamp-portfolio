# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!(
  email: "test@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Admin User",
  roles: "site_admin"
)

puts "1 Admin user created"

User.create!(
  email: "test2@test.com",
  password: "asdfasdf",
  password_confirmation: "asdfasdf",
  name: "Regular User",
)

puts "1 regular user created"
3.times do |topic|
	Topic.create!(
		title: "Topic #{topic}"
		)

end
puts "3 topics created"
10.times do |blog|
	Topic.last.blogs.create!(
		title: "My Blog Post #{blog}",
		body: "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat"
		)
end
puts "10 blog posts created"
5.times do |skill|
	Skill.create!(
		title: "Rails skill #{skill}",
		percent_utilized: 15
		)
end
puts "5 skills created"
8.times do |item|
	Portfolio.create!(
		title: "portfolio title: #{item}",
		subtitle: "RoR",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
		main_image:"http://via.placeholder.com/600x400" ,
		thumb_image: "http://via.placeholder.com/350x200"
		)
end
1.times do |item|
	Portfolio.create!(
		title: "portfolio title: #{item}",
		subtitle: "Angular",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. ",
		main_image:"http://via.placeholder.com/600x400" ,
		thumb_image: "http://via.placeholder.com/350x200"
		)
end
puts "9 portfolio items created"
3.times do |t|
	Portfolio.last.technologies.create!(
		name:"some Technology #{t}"
		)
end

puts "3 technologies created"
