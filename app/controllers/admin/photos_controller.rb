require "waz-blobs"

module Admin
   class PhotosController < ApplicationController
     before_filter :doAdminAuthentication
     private
     def doAdminAuthentication
       :authenticate_user!

       unless current_user.owner
         not_found
       end
     end
    public
     def index
        @photos = Photo.all
     end
     def show
       @photo = Photo.find params[:id]
     end
     def edit
       @photo = Photo.find params[:id]
     end
     def new
        @photo = Photo.new
     end
     def create
       uploaded_io = params[:photo][:picture]

       options = {:account_name => ENV['AZURE_ACCOUNT_NAME'],
                  :access_key => ENV['AZURE_ACCOUNT_PRIMARY_ACCESS_KEY']}
       WAZ::Storage::Base.establish_connection(options) do
         my_container = WAZ::Blobs::Container.find('split-pin')
         new_photo_blob = my_container.store(uploaded_io.original_filename, uploaded_io.read, uploaded_io.content_type)
         if !new_photo_blob.nil? && !new_photo_blob.url.blank?
           new_photo = Photo.new(title:params[:photo][:title],
                                 description:params[:photo][:description],
                                 url:new_photo_blob.url,
                                 visible: params[:photo][:visible],
                                 sequence: params[:photo][:sequence],
                                 portfolio: params[:photo][:portfolio],
                                 horizontal: false)
           if new_photo.save
             redirect_to :action => :index
           else
             render :show
           end
         end
       end
     end
     def update
       @photo = Photo.find(params[:id])
       if @photo.update_attributes(params[:photo])
         redirect_to :action => :index
       else
           render :show
       end
     end
   end
end