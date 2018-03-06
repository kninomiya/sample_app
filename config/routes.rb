SampleApp::Application.routes.draw do
  devise_for :users
#  root  'static_pages#home'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
#root to: "home#index"  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
