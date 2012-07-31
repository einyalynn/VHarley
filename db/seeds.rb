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
Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/A-1_f.jpg',
              :title => "Bundt Tins",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 1

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/B-1_f.jpg',
              :title => "Bundt Cake",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 2

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/C-1_f.jpg',
              :title => "Coffee",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 3

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/D-1_f.jpg',
              :title => "Coffee Filter",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 4

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/E-1_f.jpg',
              :title => "Bean",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 5

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/F-1_f.jpg',
              :title => "Figs",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 6

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/G-1_f.jpg',
              :title => "Baking Ingredients",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 7

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/H-1_f.jpg',
              :title => "Almond Meringue",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 8

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/I-1_f.jpg',
              :title => "Ingredients",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 9

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/J-1_f.jpg',
              :title => "Plated Leeks",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 10

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/K-1_f.jpg',
              :title => "Lemon and Rhubarb",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 11

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/L-1_f.jpg',
              :title => "Christmas Ornament",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 12

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/M-1_f.jpg',
              :title => "Cupcake Candycane",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 13

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/N-1_f.jpg',
              :title => "New Potatoes",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 14

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/O-1_f.jpg',
              :title => "Burgers",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 15

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/P-1_f.jpg',
              :title => "Asparagus",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 16

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/Q-1_f.jpg',
              :title => "Pear",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 17

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/R-1_f.jpg',
              :title => "Museli",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 18

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/S-1_f.jpg',
              :title => "Raspberry Sorbet",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 19
