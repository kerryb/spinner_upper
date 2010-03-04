ActionController::Routing::Routes.draw do |map|
  #map.resources :instances, :only => [:create]
  map.connect "/instances", :controller => "instances", :action => "create"
end
