# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
(1..30).each do |n|
	Student.create(name: "student#{n}")
end


ActionType.create(name: "participation")
ActionType.create(name: "high quality")
ActionType.create(name: "baby attack")
ActionType.create(name: "calling out")
ActionType.create(name: "teamwork")
ActionType.create(name: "working independently")
ActionType.create(name: "resisting distractions")
ActionType.create(name: "swearing")
