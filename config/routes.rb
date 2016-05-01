Rails.application.routes.draw do
  resources :tags
  resources :game_tags
  devise_for :users
  resources :games
 get "/" => "application#home"
 get "/aboutus" => "application#aboutus"
 get "/login" => "application#login"
 get "/suggestions" => "application#suggestions"
   root to: "application#home"
end
