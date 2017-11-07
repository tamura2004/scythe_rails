Rails.application.routes.draw do
  resources :actions
  resources :nations
  resources :factions

  resources :plays do
    resources :turns
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "plays#index"
end
