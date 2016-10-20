Rails.application.routes.draw do
  root to: 'pages#home'

  get :dashboard, to: 'pages#dashboard', as: :dashboard

  devise_for :patients
  devise_for :doctors

  resources :appointments
  resources :prescriptions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
