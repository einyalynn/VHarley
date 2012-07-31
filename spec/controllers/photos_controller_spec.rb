require 'spec_helper'

describe Admin::PhotosController do
  describe "GET Index" do
    it "return HTTP code 200" do
      get :index
      response.code.should eq("200")
    end
  end
  describe "GET New" do
    it "return HTTP code 200" do
      get :new
      response.code.should eq("200")
    end
  end
  describe "GET Show" do
    it "return HTTP code 200" do
      get :show
      response.code.should eq("200")
    end
  end
end
