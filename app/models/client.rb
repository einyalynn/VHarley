class Client < ActiveRecord::Base
  attr_accessible :name, :sequence, :url
end
