Rails.application.routes.draw do
  resources :articles

  devise_for :users, controllers: { sessions: 'users/sessions',
                                              devise: 'users/devise',
                                              passwords: 'users/passwords',
                                              unlocks: 'users/unlocks',
                                              registrations: 'users/registrations'}

  resources :users, except:[:new]

  root 'pages#home'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  # #For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
