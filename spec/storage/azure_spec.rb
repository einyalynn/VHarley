require "rspec"
require "spec_helper"
require "waz-blobs"

describe "Azure Blob" do

  it "should be able to connect to account" do

    options = {:account_name => ENV['AZURE_ACCOUNT_NAME'],
              :access_key => ENV['AZURE_ACCOUNT_PRIMARY_ACCESS_KEY']}
    WAZ::Storage::Base.establish_connection(options) do
      all_containers = WAZ::Blobs::Container.list
      all_containers.count.should eq(1)
      has_my_container = false
         all_containers.each{|c| if c.name.eql?('split-pin')
                                   has_my_container = true
                                 end
         }
      has_my_container.should eq(true)

        my_container = WAZ::Blobs::Container.find('split-pin')
        my_container.nil?.should eq(false)
        my_container.public_access = true
        my_container.public_access?.should eq(true)
        my_container.name.should eq('split-pin')

    end
  end
end