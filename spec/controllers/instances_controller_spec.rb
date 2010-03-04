require 'spec_helper'

describe InstancesController do
  describe "routing" do
    it {should route(:post, '/instances').to(
      :controller => "instances", :action => :create) }
  end

  describe "posting to create" do
    before do
      Instance.stub :create
    end

    it "spins up a new instance" do
      Instance.should_receive :create
      post :create
    end

    it "returns the string 'Instance is spinning up'" do
      post :create
      response.body.should == "Instance is spinning up\n"
    end

    it "returns 200 OK" do
      post :create
      response.response_code.should == 200
    end
  end
end
