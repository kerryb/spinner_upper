class InstancesController < ApplicationController
  def create
    Instance.create
  end
end
