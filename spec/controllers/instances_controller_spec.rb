require 'spec_helper'

describe InstancesController do
  describe "routing" do
    it {should route(:post, '/instances').to(
      :controller => "instances", :action => :create) }
    it {should route(:post, '/instances/test').to(
      :controller => "instances", :action => :test) }
  end

  describe "posting to create" do
    before do
      Instance.stub :create
    end

    it "spins up a new instance" do
      Instance.should_receive :create
      post :create
    end

    it "renders create.html.erb" do
      post :create
      response.should render_template "create.html.erb"
    end

    it "returns 200 OK" do
      post :create
      response.response_code.should == 200
    end
  end

  describe "getting test" do
    it "does not spin up a new instance" do
      Instance.should_not_receive :create
      get :test
    end

    it "renders create.html.erb" do
      get :test
      response.should render_template "create.html.erb"
    end

    it "returns 200 OK" do
      get :test
      response.response_code.should == 200
    end
  end
end
