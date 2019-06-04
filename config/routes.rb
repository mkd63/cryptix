Rails.application.routes.draw do
  get    '/login',   to: 'login_details#new'
  post   '/login',   to: 'login_details#create'
  delete '/logout',  to: 'login_details#destroy'
  resources :user_details do
   get :reg, on: :collection
  end
  post '/reg' => 'user_details#reg'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
