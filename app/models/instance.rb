require 'right_aws'

class Instance
  def self.create
    ENV['EC2_URL'] = EC2_URL
    ec2 = RightAws::Ec2.new ACCESS_KEY, SECRET_KEY, :proxy => ENV['http_proxy']
    image_id = "emi-4EEF19DC"
    group_name = "default"
    key_name = "team7"
    #response = ec2.run_instances image_id, 1, 1, [group_name], key_name
    #RAILS_DEFAULT_LOGGER.debug response.inspect
    #response.first[:aws_instance_id]
    "wibble"
  end
end
