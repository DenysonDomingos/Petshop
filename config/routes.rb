Rails.application.routes.draw do

  root 'animals#index'
  resources :animals  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
