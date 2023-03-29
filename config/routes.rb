Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users
  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard'
  resources :jobs do
    resources :appointments, only: [:new, :create, :show]
    resources :job_applications, only: [:create]
    resources :favorites, only: [:new, :create, :show]
    resources :chatrooms, only: [:new, :create, :show]
    resources :messages, only: [:create]
  end
  resources :favorites, only: [:index]
  get '/candidates', to: 'pages#employer_index'
  get '/candidates/:id', to: 'pages#candidates_show', as: :candidate
  get 'job_applications/:id/accept', to: 'job_applications#accept', as: :accept
  get 'job_applications/:id/decline', to: 'job_applications#decline', as: :decline
  resources :appointments, only: :destroy
  resources :job_applications, only: :destroy
  # Defines the root path route ("/")
  # root "articles#index"
end
