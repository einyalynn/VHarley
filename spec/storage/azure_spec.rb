require "rspec"
require "spec_helper"
require "waz-blobs"

describe "Azure Blob" do

  it "should be able to connect to account" do

    options = {:account_name => ENV['AZURE_ACCOUNT_NAME'],
               :access_key => ENV['AZURE_ACCOUNT_PRIMARY_ACCESS_KEY']}
    WAZ::Storage::Base.establish_connection(options) do
      all_containers = WAZ::Blobs::Container.list
      all_containers.count.should be > 0
      has_my_container = false
      all_containers.each{|c| if c.name.eql?('split-pin')
                                has_my_container = true
                              end
      }
      has_my_container.should eq(true)
      my_container = WAZ::Blobs::Container.find('split-pin')
      my_container.nil?.should eq(false)
      my_container.public_access?.should eq('container')
      my_container.name.should eq('split-pin')
      my_blobs = my_container.blobs
      my_blobs.count.should be > 0
      puts my_blobs.to_yaml
    end
  end
end

#creation code
#new_container = WAZ::Blobs::Container.create("container-name")
#new_container.store('index.html', 'hello world', 'text/html')
#note: see msdn api documentation for details on blob vs container settings
#new_container.public_access = "container"