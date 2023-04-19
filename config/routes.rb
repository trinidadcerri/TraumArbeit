Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "pages#home"

  # Pages Controller, Here we need to place only the routes that are not related to a model
  get '/dashboard', to: 'pages#dashboard'
  get '/candidates', to: 'pages#employer_index'
  get '/candidates/:id', to: 'pages#candidates_show', as: :candidate
  get '/employer', to: 'pages#employer_profile', as: :employer_profile
  get '/my_posts', to: 'pages#my_posts', as: :my_posts
  get '/cvs', to: 'pages#cvs'
  get '/calendar', to: 'pages#calendar'
  get '/employer_calendar', to: 'pages#employer_calendar'

  resources :jobs do
    resources :favorites, only: [:new, :create]
  end

  # Moved the show into their own routes, they are not nested anymore as they work indipendently from a job
  resources :appointments, only: %i[show destroy] do
    member do
      get :accept
      get :decline
    end
  end

  resources :favorites, only: %i[index destroy]
  resources :chatrooms, only: [:index, :show] do
    resources :messages, only: :create
  end

  resources :job_applications, only: %i[index destroy create] do
    resources :appointments, only: %i[new create]
    member do
      # Should be patch, and has now been nested in a member for job_applications
      get :accept
      get :decline
    end
  end
end
