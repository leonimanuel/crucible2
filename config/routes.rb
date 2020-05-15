Rails.application.routes.draw do
  resources :facts
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "login" => "sessions#login"
  post "login" => "sessions#create_login"
end
