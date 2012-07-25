class Photo < ActiveRecord::Base
  attr_accessible :description, :sequence, :title, :url, :visible, :picture, :horizontal, :portfolio
end
