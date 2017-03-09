# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# user = User.new(email: "tony.stark@gmail.com", password: "iamironman")
# politician_user = User.new(email: "sergio.rivas@phc.gov", password: "yeah")
# user.save
# politician_user.save

# comment = Comment.new(content: "I will vote against the repeal and replace bill.")
# comment.save
# post = Post.new(title: "Save Obamacare", content: "Obamacare saved my life. What are you doing to make sure it is not repealed?")
# post.save

# user.posts << post
# politician_user.comments << comment
# post.comments << comment

# 10.times do
#     user = User.new(email: Faker::Internet.email, password: "password", city: "Barcelona", address: ["Gracia", "Sants", "Poble Sec", "Poble Nou"].sample(1)[0], first_name: Faker::Name.first_name, last_name: Faker::Name.last_name )
#     user.save
#     comment = Comment.new(content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam sint suscipit facilis, veniam adipisci sunt, ut doloremque qui ipsa commodi dolorem fugiat iure? Quidem, odit velit recusandae. Quia dolor veritatis modi nam non voluptatum, at blanditiis quas atque nisi, qui.")
#     comment.save
#     post = Post.new(title: Faker::Commerce.color, content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis deleniti, itaque et enim rem ex iure suscipit molestias quia fugiat. Nesciunt reiciendis quis quam eligendi omnis eum harum et quo consequatur impedit tempora quae vitae magni necessitatibus blanditiis doloribus, iste earum quasi quibusdam aspernatur! Quos quidem iure sint, sunt harum.", category: "issue-category"  ,city: "Barcelona", neighbourhood: ["Gracia", "Sants", "Poble Sec", "Poble Nou"].sample(1)[0] )
#     post.save

#     user.posts << post
#     user.comments << comment
#     post.comments << comment
# end

UserAsPolitician.destroy_all
User.destroy_all
UserPost.destroy_all
Post.destroy_all

user = User.new(password: "password", email: "taggedin@email.com", first_name: "TAGGED")
user.save
politician = UserAsPolitician.new(political_party: 'Democrats', office: 'Mayor', elected: true, user: user)
politician.save

post = Post.new(title: "Test title", category: 'water', city: 'Paris', neighbourhood: ApplicationRecord::NEIGHBOURHOODS.sample)
post.users << user
post.save
user2 = User.new(password: "password", email: "author@email.com", first_name: "AUTHOR")
user2.save
post.user = user2
post.save

user_post = UserPost.new(user: user, post: post)
user_post.save

