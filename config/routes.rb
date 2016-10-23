Rails.application.routes.draw do
  root to: 'pages#home'

  get :dashboard, to: 'pages#dashboard', as: :dashboard

  devise_for :patients, controllers: { sessions: 'patients/sessions', registrations: 'patients/registrations' }
  devise_for :doctors, controllers: { sessions: 'doctors/sessions', registrations: 'doctors/registrations' }

  resources :appointments
  resources :prescriptions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
