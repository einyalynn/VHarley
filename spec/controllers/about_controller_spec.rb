require "rspec"
require "spec_helper"

describe AboutController do
  describe "GET Index" do
    it "has a 200 status code" do
      get :index
      response.code.should eq("200")
    end
  end
end