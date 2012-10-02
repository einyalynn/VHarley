class Photo < ActiveRecord::Base
  before_destroy :before_destroy
  attr_accessible :description, :sequence, :title, :url, :picture, :visible, :horizontal, :portfolio
  def before_destroy
  options = {:account_name => ENV['AZURE_ACCOUNT_NAME'],
             :access_key => ENV['AZURE_ACCOUNT_PRIMARY_ACCESS_KEY']}
  WAZ::Storage::Base.establish_connection(options) do
    my_container = WAZ::Blobs::Container.find('split-pin')

    filename = PortfolioHelper::Utilities.new.getFileName(self.url)
    photoAzure = my_container[filename]
    unless photoAzure.nil?
      photoAzure.destroy!
    end
  end
end
end
