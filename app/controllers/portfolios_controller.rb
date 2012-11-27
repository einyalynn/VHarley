class PortfoliosController < ApplicationController
  def index

  end

  def show
    @clients = Client.all :order => [:sequence, :name]
    @photos = Photo.all :conditions => [ "portfolio = ? AND visible = ?",  params[:id].downcase, true],  :order => [:portfolio, :sequence]
  end

end
