class PortfoliosController < ApplicationController
  def index

  end

  def show
    @photos = Photo.all :conditions => [ "portfolio = ? AND visible = ?",  params[:id].downcase, true],  :order => [:portfolio, :sequence]
  end

end
