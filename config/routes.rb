Rails.application.routes.draw do
  resources :articles

  devise_for :auth, controllers: {sessions: 'auth/sessions',
                                    passwords: 'auth/passwords',
                                    unlocks: 'auth/unlocks',
                                    registrations: 'auth/registrations'}

  resources :users

  root 'pages#home'
  get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
