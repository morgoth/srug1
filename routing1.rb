ActionController::Routing::Routes.draw do |map|
  map.resources :categories
  map.login "login", :controller => "session",
                     :action => "new"
end
