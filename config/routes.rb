Rails.application.routes.draw do
  resources :appointments
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'application#index'
  root 'appointments#index'

  get 'search_appointments' => 'appointments#search'
  get 'about' => 'appointments#about'



end
