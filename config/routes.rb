ActionController::Routing::Routes.draw do |map|
  map.resources :instances, :only => [:create]
end
