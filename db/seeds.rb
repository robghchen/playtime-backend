# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all

User.create({first_name:"rob", last_name:"chen", username:"heyitsrob", email:"rob@ert.com",password:"passme",city:"new york", school:"flatiron",work:"coding",exp:0})
User.create({first_name:"brian", last_name:"horrowitz", username:"imahufflepuff", email:"huffle@puff.com",password:"isawabird",city:"new york", school:"hogwarts",work:"coding",exp:0})
User.create({first_name:"raquel", last_name:"randall", username:"dark raquel", email:"dark@raquel.com",password:"muchglares",city:"new york", school:"flatiron",work:"coding",exp:0})
User.create({first_name:"amir", last_name:"safoev", username:"voldamir", email:"amir@slytherin.com",password:"slytherin",city:"new york", school:"hogwarts",work:"sometimes coding",exp:0})

Post.create({player_id:1, friend_id:2, content:"rob posting to brian"})
Post.create({player_id:2, friend_id:3, content:"brian posting to raquel"})
Post.create({player_id:3, friend_id:4, content:"raquel posting to amir"})
Post.create({player_id:4, friend_id:1, content:"amir posting to rob"})

Comment.create({player_post_id:1, friend_post_id:2, comment:"comment 1"})
Comment.create({player_post_id:2, friend_post_id:3, comment:"comment 2"})
Comment.create({player_post_id:3, friend_post_id:4, comment:"comment 3"})
Comment.create({player_post_id:4, friend_post_id:1, comment:"comment 4"})