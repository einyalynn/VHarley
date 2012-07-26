# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'SETTING UP DEFAULT USER LOGIN'
puts 'user '  + ENV['ADMIN_EMAIL']
puts 'password ' + ENV['ADMIN_PASSWORD']
user = User.create! :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup,:owner=>true
puts 'New user created: ' << user.email

puts 'SEEDING IMAGES'
Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/1A_f.jpg',
              :title => "Figs",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 1

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/3_f.jpg',
              :title => "Macaroons",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 3

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/1B_f.jpg',
              :title => "Bean",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 2