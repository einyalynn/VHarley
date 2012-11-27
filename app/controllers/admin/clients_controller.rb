
module Admin

  class ClientsController < ApplicationController
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
    end
    def show
      @client = Client.find params[:id]
    end
    def edit
      @client = Client.find params[:id]
    end
    def new
      @client = Client.new
    end
    def create
      client = Client.new().update_attributes(params[:client]  )

          unless client.nil?
            redirect_to :action => :index
          else
            render :create
          end
    end
    def update
      client = Client.find params[:id]
      client.update_attributes(params[:client])

      unless client.nil?
        redirect_to :action => :index
      else
        render :show
      end
    end

    def destroy
      Client.destroy(params[:id])
      redirect_to :action => :index
    end
  end
end