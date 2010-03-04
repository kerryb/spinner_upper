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
  end
end
