ActionController::Routing::Routes.draw do |map|
  #map.resources :instances, :only => [:create]
  map.connect "/instances", :controller => "instances", :action => "create"
  map.connect "/instances/test", :controller => "instances", :action => "test"
end
