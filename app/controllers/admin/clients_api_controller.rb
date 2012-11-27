module Admin

  class ClientsApiController < ApplicationController
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
      @clients = Client.all :order => [:sequence, :name]
      render :json => @clients
    end
    def update
      @client = Client.find(params[:id])
      @client.url = params["url"]
      @client.name = params["name"]
      @client.sequence = params["sequence"]

      if @client.save
        render :json => (success = true)
      else
        render :json => (success = false)
      end
    end

  end
end
