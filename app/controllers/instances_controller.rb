class InstancesController < ApplicationController
  def create
    @id = Instance.create
  end
end
