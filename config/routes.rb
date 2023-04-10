Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard'
  resources :jobs do
    resources :appointments, only: [:new, :create, :show]
    resources :job_applications, only: [:new, :create, :show]
    resources :appointments, only: [:new, :create, :show]
    resources :favorites, only: [:new, :create, :show]
  end
  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end
  resources :favorites, only: [:index]
  get '/cvs', to: 'pages#cvs'
  get '/calendar', to: 'pages#calendar'
  resources :job_applications, only: [:index]
  resources :appointments, only: [:index]
  get '/candidates', to: 'pages#employer_index'
  get '/candidates/:id', to: 'pages#candidates_show', as: :candidate
  get '/employer', to: 'pages#employer_profile', as: :employer_profile
  get '/my_posts', to: 'pages#my_posts', as: :my_posts
  get 'job_applications/:id/accept', to: 'job_applications#accept', as: :accept
  get 'job_applications/:id/decline', to: 'job_applications#decline', as: :decline
  get 'appointments/:id/accept', to: 'appointments#accept', as: :appointment_accept
  get 'appointments/:id/decline', to: 'appointments#decline', as: :appointment_decline
  resources :appointments, only: :destroy
  resources :job_applications, only: :destroy
  resources :favorites, only: :destroy
  # Defines the root path route ("/")
  # root "articles#index"
end
