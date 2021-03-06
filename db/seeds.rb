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
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/A-1_f.jpg',
              :title => "Bundt Tins",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 1

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/B-1_f.jpg',
              :title => "Bundt Cake",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 2
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/B3.jpg',
              :title => "Mug of Quinoa",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 3
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/B4.jpg',
                                          :title => "Blueberries and Cream",
                                          :portfolio => "food",
                                          :description => "",
                                          :visible =>true,
                                          :horizontal =>false,
                                          :sequence => 4
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/C-1_f.jpg',
              :title => "Coffee",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 5

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/D-1_f.jpg',
              :title => "Coffee Filter",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 6

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/E-1_f.jpg',
              :title => "Bean",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 7

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/F-1_f.jpg',
              :title => "Figs",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 8

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/G-1_f.jpg',
              :title => "Baking Ingredients",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 9

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/H-1_f.jpg',
              :title => "Almond Meringue",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 10

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/I-1_f.jpg',
              :title => "Ingredients",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 11

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/J-1_f.jpg',
              :title => "Plated Leeks",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 12

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/K-1_f.jpg',
              :title => "Lemon and Rhubarb",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>true,
              :sequence => 13

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/L-1_f.jpg',
              :title => "Christmas Ornament",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 14

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/M-1_f.jpg',
              :title => "Cupcake Candycane",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 15

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/N-1_f.jpg',
              :title => "New Potatoes",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 16

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/O-1_f.jpg',
              :title => "Burgers",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 17

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/P-1_f.jpg',
              :title => "Asparagus",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 18

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/Q-1_f.jpg',
              :title => "Pear",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 19

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/R-1_f.jpg',
              :title => "Museli",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 20

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/S-1_f.jpg',
              :title => "Raspberry Sorbet",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 21
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/T.jpg',
              :title => "Kneeding machine",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 22
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/U.jpg',
              :title => "Baked Loaves",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 23
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/V.jpg',
              :title => "Proofing Loaves",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 24
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/X.jpg',
              :title => "Proved Loaves",
              :portfolio => "food",
              :description => "",
              :visible =>true,
              :horizontal =>false,
              :sequence => 25

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/A-1_i.jpg',
              :title => "Through Door", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 1

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/B-1_i.jpg',
              :title => "Framed Art", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 2

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/C-1_i.jpg',
              :title => "Board and Table", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 3

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/D-1_i.jpg',
              :title => "Sawhorse Table", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 4

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/E-1_i.jpg',
              :title => "Comfy Chair", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 5

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/F-1_i.jpg',
              :title => "Tassel", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 6

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/G-1_i.jpg',
              :title => "Outdoors", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>true,
              :sequence => 7

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/H-1_i.jpg',
              :title => "Sewing Table", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 8

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/I-1_i.jpg',
              :title => "Thread and Notions", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 9

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/J-1_i.jpg',
              :title => "11", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 10

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/K-1_i.jpg',
              :title => "Crate and Chair", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 11

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/L-1_i.jpg',
              :title => "Shade", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>true,
              :sequence => 12

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/M-1_i.jpg',
              :title => "Vegetable Stand", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 13

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/N-1_i.jpg',
              :title => "Shop Interior", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 14

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/O-1_i.jpg',
              :title => "Twine", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 15

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/P-1_i.jpg',
              :title => "Gourds", :portfolio => "interiors", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 16

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/article.jpg',
              :title => "Article", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 1

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/press-1.jpg',
              :title => "Country Living - cover", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 2

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/press-2.jpg',
              :title => "Country Living - interior", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 3

Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/press-3.jpg',
              :title => "Gardenalia - cover", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 4
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/press-4.jpg',
              :title => "Gardenalia - interior", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 5
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/2.jpg',
              :title => "English Home - Romantic Disposition", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 6
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/3.jpg',
              :title => "Interior Photos", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 7
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/4.jpg',
              :title => "Yorkshire Life - cover", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 8
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/5.jpg',
              :title => "Interior Photos", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 9
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/6.jpg',
              :title => "Interior Photos", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 10
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/7.jpg',
              :title => "Interior Photos", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 11
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/8.jpg',
              :title => "Great British Food - cover", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 12
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/9.jpg',
              :title => "Interior Photos", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 13
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/10.jpg',
              :title => "House & Garden - cover", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 14
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/11.jpg',
              :title => "Interior Photos", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 15
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/12.jpg',
              :title => "Le Journal du Patissier - cover", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 16
Photo.create! :url=>'http://splitpin.blob.core.windows.net/split-pin/13.jpg',
              :title => "Interior Photos", :portfolio => "published", :description => "", :visible =>true, :horizontal =>false,
              :sequence => 17

Client.create! :name =>'Merrell Publishing', :sequence => 1, :url => ''
Client.create! :name =>'Jacqui Small Publishing', :sequence => 2, :url => ''
Client.create! :name =>'Absolutely Food PR', :sequence => 3, :url => ''
Client.create! :name =>'Huts and Hideaways', :sequence => 4, :url => ''
Client.create! :name =>'Tesco Real Food Magazine ', :sequence => 5, :url => ''
Client.create! :name =>'Vicky Grant Smith Interiors', :sequence => 6, :url => ''
Client.create! :name =>'Dumouchel Patisserie', :sequence => 7, :url => ''
Client.create! :name =>'Yorkshire Life', :sequence => 8, :url => ''
Client.create! :name =>'Copperwheat Agriculture', :sequence => 9, :url => ''
Client.create! :name =>'Channel 4 Food', :sequence => 10, :url => ''
Client.create! :name =>'TeaHee Espresso Bar', :sequence => 11, :url => ''
Client.create! :name =>'Quad Speakers', :sequence => 12, :url => ''
Client.create! :name =>'Jamsmith', :sequence => 13, :url => ''
Client.create! :name =>'Sutton Beef and Lamb', :sequence => 14, :url => ''