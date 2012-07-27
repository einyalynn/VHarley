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

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/4_f.jpg',
              :title => "Macaroon",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 4

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/5_f.jpg',
              :title => "Mince Pies",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 5

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/6_f.jpg',
              :title => "Kiwi Tart",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 6

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/7_f.jpg',
              :title => "Raspberry Angelfood Cake",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 7

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/8_f.jpg',
              :title => "Sweets Table",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 8

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/10_f.jpg',
              :title => "Apple",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 9

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/11_f.jpg',
              :title => "Dinner",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 10

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/13_f.jpg',
              :title => "Coffees",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 11

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/14_f.jpg',
              :title => "Coffee",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 12

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/15_f.jpg',
              :title => "Coffee Creation",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 13

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/16_f.jpg',
              :title => "Coffee Filter",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 14

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/18_f.jpg',
              :title => "Almond Meringue",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 15

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/19_f.jpg',
              :title => "Ingredients",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 16

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/20_f.jpg',
              :title => "Peach Tart",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 17

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/21_f.jpg',
              :title => "New Potatoes",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 18

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/22_f.jpg',
              :title => "Blackberry Panna cotta",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 19

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/23_f.jpg',
              :title => "Cupcake",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 20

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/24_f.jpg',
              :title => "Raspberry Jam",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 21

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/25_f.jpg',
              :title => "Pear",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 22

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/26_f.jpg',
              :title => "Burgers",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 23

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/27_f.jpg',
              :title => "Olives",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 24

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/28_f.jpg',
              :title => "Dinner Ingredients",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 25

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/29_f.jpg',
              :title => "Leeks",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 26

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/30_f.jpg',
              :title => "Plated Leeks",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 27

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/31_f.jpg',
              :title => "Lemon and Rhubarb",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 28

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/asparagus_f.jpg',
              :title => "Asparagus",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 29

Photo.create! :url=>'http://drose.blob.core.windows.net/split-pin/cupcake_f.jpg',
              :title => "Cupcake Candycane",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 30