# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user_1 = User.create(name:"Tom Tomson",email:"tom@tom.com", password:"tompassword")

poll_1 = Poll.create(name:"Friday Dinner",description:"Where should we get dinner?",creator: user_1)

poll_1.restaurants <<  Restaurant.create(yelp_id:"test_id_1")
poll_1.restaurants <<  Restaurant.create(yelp_id:"test_id_2")
poll_1.restaurants <<  Restaurant.create(yelp_id:"test_id_3")
poll_1.restaurants <<  Restaurant.create(yelp_id:"test_id_4")


# user_1 = User.create(name:"Tom Tomson",email:"tom@tom.com", password:"tompassword")
  poll_1.users << user_1
  user_1.rankings << Ranking.create(rank:5,option_id:1)
  user_1.rankings << Ranking.create(rank:6,option_id:2)
  user_1.rankings << Ranking.create(rank:2,option_id:3)
  user_1.rankings << Ranking.create(rank:7,option_id:4)


voter_2 = User.create(name:"Janet Janetson",email:"janet@janet.com", password:"janetpassword")
  poll_1.users << voter_2
  voter_2.rankings << Ranking.create(rank:3,option_id:1)
  voter_2.rankings << Ranking.create(rank:4,option_id:2)
  voter_2.rankings << Ranking.create(rank:6,option_id:3)
  voter_2.rankings << Ranking.create(rank:9,option_id:4)


voter_3 = User.create(name:"Sara Sarason",email:"sara@sara.com", password:"sarapassword")
  poll_1.users << voter_3
  voter_3.rankings << Ranking.create(rank:7,option_id:1)
  voter_3.rankings << Ranking.create(rank:3,option_id:2)
  voter_3.rankings << Ranking.create(rank:8,option_id:3)
  voter_3.rankings << Ranking.create(rank:3,option_id:4)

voter_4 = User.create(name:"John Johnson",email:"john@john.com", password:"johnpassword")
  poll_1.users << voter_4
  voter_4.rankings << Ranking.create(rank:6,option_id:1)
  voter_4.rankings << Ranking.create(rank:2,option_id:2)
  voter_4.rankings << Ranking.create(rank:8,option_id:3)
  voter_4.rankings << Ranking.create(rank:4,option_id:4)


