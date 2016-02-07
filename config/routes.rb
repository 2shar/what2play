Rails.application.routes.draw do
  resources :games
 get "/" => "application#home"
 get "/aboutus" => "application#aboutus"
end