# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
oliver = User.create( username: 'Oliver', password: 'password' )

fact_one = Fact.create( fact: 'Wiley Hardeman Post was the first pilot to fly solo around the world.', likes: 1, user_id: 1 )
fact_two = Fact.create( fact: 'The Symphony No1 in E flat major, K.16, was written by Wolfgang Amadeus Mozart at the age of 8.,' likes: 2, user_id: 1 )
