class InstancesController < ApplicationController
  def create
    Instance.create
    render :text => "Instance is spinning up"
  end
end
