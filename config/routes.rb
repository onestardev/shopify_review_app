Rails.application.routes.draw do
  root :to => 'home#index'

  #capture the parent/child relationship in the routing
  resources :products do
  	resources :reviews 
  end



  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
