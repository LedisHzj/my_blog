Rails.application.routes.draw do
  resources :articles

  devise_for :users, path_prefix: 'auth', controllers: {sessions: 'users/sessions',
                                    passwords: 'users/passwords',
                                    unlocks: 'users/unlocks',
                                    registrations: 'users/registrations'}

  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
  end

  resources :users
  get 'sign_up', to: 'users#new', as: 'sign_up'

  root 'pages#home'
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
