Rails.application.routes.draw do
  resources :games
 get "/" => "application#home"
 get "/aboutus" => "application#aboutus"
 get "/login" => "application#login"
end