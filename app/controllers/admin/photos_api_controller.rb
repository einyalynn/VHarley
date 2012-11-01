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
  end
end
