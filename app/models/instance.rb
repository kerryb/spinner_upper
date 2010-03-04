class Instance
  def self.create
    ENV['EC2_URL'] = "http://c2.harmo.cloud21cn.com:8773/services/Eucalyptus"
    ec2 = RightAws::Ec2.new ACCESS_KEY, SECRET_KEY, :proxy => ENV['http_proxy']
    image_id = "emi-4EEF19DC"
    group_name = "default"
    key_name = "team7"
    response = ec2.run_instances image_id, 1, 1, [group_name], key_name
    p response
  end
end
