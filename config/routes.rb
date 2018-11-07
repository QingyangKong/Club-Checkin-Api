Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get users
  resources :users
  resources :groups
  resources :card_reporters
  resources :card_supporters
  resources :members
  resources :groups
  resources :group_cards
end
