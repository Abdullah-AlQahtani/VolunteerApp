# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Opportunity.destroy_all
User.destroy_all
AppUser.destroy_all


# Opportunity.create(name: "first opp", gender: "Both", description: "some cool opppere", location: "", dateOfEvent: Time.now, user_id: 8)
# Opportunity.create(name: "second opp", gender: "Both", description: "some cool opppere", location: "", dateOfEvent: Time.now, user_id: 8)
# Opportunity.create(name: "third opp", gender: "Both", description: "some cool opppere", location: "", dateOfEvent: Time.now, user_id: 8)
# Opportunity.create(name: "fourth opp", gender: "Both", description: "some cool opppere", location: "", dateOfEvent: Time.now, user_id: 8)
# Opportunity.create(name: "LOL opp", gender: "Both", description: "some cool opppere", location: "", dateOfEvent: Time.now, user_id: 8)
# Opportunity.create(name: "Yeah opp", gender: "Both", description: "some cool opppere", location: "", dateOfEvent: Time.now, user_id: 8)