# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.destroy_all
puts "Destroyed everything you touch"
posts = [
{
  author: "Nick Cave",
  tag: "New Album",
	title: "The Bad Seeds",
	content: "Tracklist"
},
{
  author: "Nick Cave",
  tag: "New Album",
	title: "The Bad Seeds",
	content: "Tracklist"
}
]

posts.each do |post|
	postik = Post.create(post)
	puts post
	puts postik
	puts postik.to_json
	puts "Some magic just create a #{ postik.tag } with id #{ postik.id }!"
end
