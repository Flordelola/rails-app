# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get "about", to: "about#index"
  root to:"main#index"
  # This could have also be get "/", to: "main#index" but root is more direct forward
end
