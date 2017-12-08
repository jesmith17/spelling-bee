Rails.application.routes.draw do

  root 'home#index'

  resources :spelling_words
  resources :spelling_tests
  resources :spelling_lists
  resources :weeks
  resources :teachers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
