Rails.application.routes.draw do
  resources :users
  post '/callback' => 'linebot#callback'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
