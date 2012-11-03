module Admin

  class PhotosApiController < ApplicationController
    before_filter :doAdminAuthentication
    private
    def doAdminAuthentication
      :authenticate_user!

      unless !current_user.nil? && current_user.owner
        not_found
      end
    end
    public
    def index
      @photos = Photo.all :order => [:portfolio, :sequence]
      render :json => @photos
    end
    def update
      @photo = Photo.find(params[:id])
      @photo.url = params["url"]
      @photo.title = params["title"]
      @photo.portfolio = params["section"]
      @photo.sequence = params["sequence"]
      @photo.visible = ActiveRecord::ConnectionAdapters::Column.value_to_boolean(params["visible"])
      @photo.horizontal = ActiveRecord::ConnectionAdapters::Column.value_to_boolean(params["horizontal"])

      if @photo.save
        render :json => (success = true)
      else
        render :json => (success = false)
      end
    end

  end
end
