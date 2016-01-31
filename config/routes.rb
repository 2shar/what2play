Rails.application.routes.draw do
  resources :games
 get "/" => "application#home"
end
