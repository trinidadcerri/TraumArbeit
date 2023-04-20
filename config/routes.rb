Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users

  resources :jobs do
    resources :appointments, only: %i[new create show]
    resources :job_applications, only: %i[new create show]
    resources :appointments, only: %i[new create show]
    resources :favorites, only: %i[new create show]
  end
  resources :chatrooms, only: %i[index show] do
    resources :messages, only: :create
  end

  resources :job_applications, only: %i[index destroy] do
    member do
      patch :accept
      patch :decline
    end
  end

  resources :favorites, only: %i[index destroy]
  resources :appointments, only: :index

  # Pages Controller Routes
  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard'
  get '/cvs', to: 'pages#cvs'
  get '/calendar', to: 'pages#calendar'
  get '/employer_calendar', to: 'pages#employer_calendar'
  get '/candidates', to: 'pages#employer_index'
  get '/candidates/:id', to: 'pages#candidates_show', as: :candidate
  get '/employer', to: 'pages#employer_profile', as: :employer_profile
  get '/my_posts', to: 'pages#my_posts', as: :my_posts
end
