class InstancesController < ApplicationController
  def create
    @id = Instance.create
  end

  def test
    @id = "i-1234567"
    render :action => :create
  end
end
