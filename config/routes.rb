Rails.application.routes.draw do
  
  resources :organizations, :opportunities
  get "/opportunities/:id/join", to: "opportunities#join", as: "join_opportunity"
  get "/opportunities/:id/leave", to: "opportunities#leave", as: "leave_opportunity"
  devise_for :users
  resources :users , only: [:index, :show]
  # post "/opportunities/:id" , to "opportunities#create"
  # get 'pages/home'
  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

