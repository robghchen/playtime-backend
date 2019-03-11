User.destroy_all
Post.destroy_all
Comment.destroy_all
Activity.destroy_all
Task.destroy_all
Event.destroy_all
UserEvent.destroy_all

User.create({first_name:"rob", last_name:"chen", username:"heyitsrob", email:"rob@ert.com",password:"passme",city:"new york", school:"flatiron",work:"coding", lvl:1, exp:0, exp_limit:200, energy:50, max_energy:50, speed:1, profile_img: "https://c1.staticflickr.com/6/5643/23778807571_e9649ee35e_b.jpg",cover_img: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Friends_logo.svg/2000px-Friends_logo.svg.png"})
User.create({first_name:"brian", last_name:"horrowitz", username:"imahufflepuff", email:"huffle@puff.com",password:"isawabird",city:"new york", school:"hogwarts",work:"coding", lvl:1, exp:0, exp_limit:200, energy:50, max_energy:50, speed:1, profile_img: "https://c1.staticflickr.com/6/5643/23778807571_e9649ee35e_b.jpg",cover_img: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Friends_logo.svg/2000px-Friends_logo.svg.png"})
User.create({first_name:"raquel", last_name:"randall", username:"dark raquel", email:"dark@raquel.com",password:"glares",city:"new york", school:"flatiron",work:"coding", lvl:1, exp:0, exp_limit:200, energy:50, max_energy:50, speed:1, profile_img: "https://c1.staticflickr.com/6/5643/23778807571_e9649ee35e_b.jpg",cover_img: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Friends_logo.svg/2000px-Friends_logo.svg.png"})
User.create({first_name:"amir", last_name:"safoev", username:"voldamir", email:"amir@slytherin.com",password:"slytherin",city:"new york", school:"hogwarts",work:"maybe coding", lvl:1, exp:0, exp_limit:200, energy:50, max_energy:50, speed:1, profile_img: "https://c1.staticflickr.com/6/5643/23778807571_e9649ee35e_b.jpg",cover_img: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Friends_logo.svg/2000px-Friends_logo.svg.png"})

Post.create({player_id:1, friend_id:2, content:"rob posting to brian"})
Post.create({player_id:2, friend_id:3, content:"brian posting to raquel"})
Post.create({player_id:3, friend_id:4, content:"raquel posting to amir"})
Post.create({player_id:4, friend_id:1, content:"amir posting to rob"})

Activity.create({player_id: 1, friend_id: 1, task:"+60 exp, post to heyitsrob on 02/17/19 at 18:17."})

Task.create({user_id: 3, post_count: 0, post_max: 1, comment_count: 0, comment_max: 3})

Comment.create({user_id:1, post_id:2, comment:"comment 1"})
Comment.create({user_id:2, post_id:3, comment:"comment 2"})
Comment.create({user_id:3, post_id:4, comment:"comment 3"})
Comment.create({user_id:4, post_id:1, comment:"comment 4"})

Event.create({title: "Captain Marvel @ AMC", price: 6, date: DateTime.parse("03/12/2019 6:00"), location: "AMC Empire 25", description: "We'll be meeting at the theatre in the lobby 10 minutes prior to showtime. Message Rob if you have trouble locating the theatre or group. Enjoy the movie! Seats must be reserved in advance and this movie is super hype, so please let me know if you are attending at least 3 days prior to showtime! Otherwise, you might get stuck with a front row seat in the corner alone YIKES!", banner_img: "https://secure.meetupstatic.com/photos/event/9/b/f/f/highres_479139935.jpeg", user_id: 1, event_img:"https://secure.meetupstatic.com/photos/event/5/8/9/e/highres_479122686.jpeg, enable_posts: false, enable_seats:true"})

UserEvent.create({event_id: 1, user_id: 1})
UserEvent.create({event_id: 1, user_id: 2})
UserEvent.create({event_id: 1, user_id: 3})
UserEvent.create({event_id: 1, user_id: 4})