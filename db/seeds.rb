# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Skill.destroy_all
UserSkill.destroy_all

# users= [
#   {name: 'Ritz', email: 'ritz@gmail.com', mod_name: 'Module 3', slack_username: 'Ritz1'},
#   {name: 'Ramona', email: 'ramona@gmail.com', mod_name: 'Module 3', slack_username: 'Ram'},
#   {name: 'Sarah', email: 'sarah@gmail.com', mod_name: 'Module 3', slack_username: 'Sarah'},
#   {name: 'Luoana', email: 'luoana@gmail.com', mod_name: 'Module 3', slack_username: 'luoana'}
# ]
# users.each{|user_data| User.create(user_data)}
#
skills=[
  {name: 'Active Record'},
  {name: 'Ruby'},
  {name: 'Ruby on Rails'},
  {name: 'Sinatra'},
  {name: 'SQLite 3'},
  {name: 'JavaScript'},
  {name: 'React'}
]

skills.each{|skill_data| Skill.create(skill_data)}
#
# users_skill=([
#   {user:User.find_by(name:'Sarah'), skill: Skill.find_by(name: 'Active Record'), rating: 90},
#   {user:User.find_by(name:'Ritz'), skill: Skill.find_by(name: 'Active Record'), rating: 75},
#   {user:User.find_by(name:'Luoana'), skill: Skill.find_by(name: 'Active Record'), rating: 50},
#
#   {user:User.find_by(name:'Ramona'), skill: Skill.find_by(name: 'Ruby'), rating: 80},
#   {user:User.find_by(name:'Ritz'), skill: Skill.find_by(name: 'Ruby'), rating: 90},
#   {user:User.find_by(name:'Sarah'), skill: Skill.find_by(name: 'Ruby'), rating: 90},
#
#   {user:User.find_by(name:'Ritz'), skill: Skill.find_by(name: 'Ruby on Rails'), rating: 60},
#   {user:User.find_by(name:'Luoana'), skill: Skill.find_by(name: 'Ruby on Rails'), rating: 90},
#   {user:User.find_by(name:'Sarah'), skill: Skill.find_by(name: 'Ruby on Rails'), rating: 79},
#
#   {user:User.find_by(name:'Ritz'), skill: Skill.find_by(name: 'Sinatra'), rating: 90},
#
#   {user:User.find_by(name:'Sarah'), skill: Skill.find_by(name: 'SQLite 3'), rating: 90},
#   {user:User.find_by(name:'Ritz'), skill: Skill.find_by(name: 'SQLite 3'), rating:70},
#
#   {user:User.find_by(name:'Ritz'), skill: Skill.find_by(name: 'JavaScript'), rating: 90},
#   {user:User.find_by(name:'Ramona'), skill: Skill.find_by(name: 'JavaScript'), rating: 60},
#   {user:User.find_by(name:'Sarah'), skill: Skill.find_by(name: 'JavaScript'), rating: 74},
#   {user:User.find_by(name:'Luoana'), skill: Skill.find_by(name: 'JavaScript'), rating: 50},
# ])
# users_skill.each{|us_data| UserSkill.create(us_data)}
