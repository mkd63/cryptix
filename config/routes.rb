Rails.application.routes.draw do
  get 'add_questions/index'

  get 'games/play'

  get    '/',   to: 'login_details#new'
  post   '/',   to: 'login_details#create'
  get    '/cryptix', to: 'login_details#home'
  get '/logout',  to: 'login_details#destroy'

  get    '/register',to: 'user_details#reg'
  get    '/leaderboard',to: 'user_details#leaderboard'

  resources :user_details do
   get :reg, on: :collection
   get :leaderboard, on: :collection
  end

  get    '/play', to: 'games#play'
  post   '/play', to: 'games#submit_answer'

  resources :add_questions

  resources :games

  resources :login_details, :except => ['show', 'update', 'destroy']

  get  '/home' => 'user_details#show'

  post '/reg' => 'user_details#reg'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
