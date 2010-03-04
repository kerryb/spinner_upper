require 'spec_helper'

    #ENV['EC2_URL'] = EC2_URL
    #ec2 = RightAws::Ec2.new ACCESS_KEY, SECRET_KEY, :proxy => ENV['http_proxy']
    #image_id = "emi-4EEF19DC"
    #group_name = "default"
    #key_name = "team7"
    #response = ec2.run_instances image_id, 1, 1, [group_name], key_name
    #RAILS_DEFAULT_LOGGER.debug response.inspect
    #response.first[:aws_instance_id]

describe Instance do
  describe "creating" do
    before do
      @instance_id = "i-1234567"
      @ec2 = mock "ec2", :run_instances => [{:aws_instance_id => @instance_id}]
      RightAws::Ec2.stub(:new).and_return @ec2
    end

    it "sets the EC2_URL" do
      ENV.should_receive(:[]=).with "EC2_URL", EC2_URL
      Instance.create
    end

    it "spins up an instance" do
      @ec2.should_receive(:run_instances).with "emi-4EEF19DC", 1, 1, %w{default}, "team7"
      Instance.create
    end

    it "returns the instance id" do
      Instance.create.should == @instance_id
    end
  end
end
