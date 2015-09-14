# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

poll_1 = Poll.create(name:"Friday Dinner",description:"Where should we get dinner?")

poll_1.restaurants <<  Restaurant.create(yelp_id:"test_id_1")
poll_1.restaurants <<  Restaurant.create(yelp_id:"test_id_2")
poll_1.restaurants <<  Restaurant.create(yelp_id:"test_id_3")
poll_1.restaurants <<  Restaurant.create(yelp_id:"test_id_4")


voter_1 = Voter.create(name:"Tom Tomson",email:"tom@tom.com")
  poll_1.voters << voter_1
  voter_1.rankings << Ranking.create(rank:5,restaurant_id:1)
  voter_1.rankings << Ranking.create(rank:6,restaurant_id:2)
  voter_1.rankings << Ranking.create(rank:2,restaurant_id:3)
  voter_1.rankings << Ranking.create(rank:7,restaurant_id:4)


voter_2 = Voter.create(name:"Janet Janetson",email:"janet@janet.com")
  poll_1.voters << voter_2
  voter_2.rankings << Ranking.create(rank:3,restaurant_id:1)
  voter_2.rankings << Ranking.create(rank:4,restaurant_id:2)
  voter_2.rankings << Ranking.create(rank:6,restaurant_id:3)
  voter_2.rankings << Ranking.create(rank:9,restaurant_id:4)


voter_3 = Voter.create(name:"Sara Sarason",email:"sara@sara.com")
  poll_1.voters << voter_3
  voter_3.rankings << Ranking.create(rank:7,restaurant_id:1)
  voter_3.rankings << Ranking.create(rank:3,restaurant_id:2)
  voter_3.rankings << Ranking.create(rank:8,restaurant_id:3)
  voter_3.rankings << Ranking.create(rank:3,restaurant_id:4)

voter_4 = Voter.create(name:"John Johnson",email:"john@john.com")
  poll_1.voters << voter_4
  voter_4.rankings << Ranking.create(rank:6,restaurant_id:1)
  voter_4.rankings << Ranking.create(rank:2,restaurant_id:2)
  voter_4.rankings << Ranking.create(rank:8,restaurant_id:3)
  voter_4.rankings << Ranking.create(rank:4,restaurant_id:4)


