require 'spec_helper'

describe AdminController do
  describe "GET Index" do
    it "return HTTP code 200" do
      get :index
      response.code.should eq("200")
    end
  end
end
