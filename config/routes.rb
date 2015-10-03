Rails.application.routes.draw do

	get "/" => "users#index"
	get '/login', to: 'sessions#new'
	post '/sessions', to: 'sessions#create'
  	delete '/sessions', to: 'sessions#destroy'

  	resources :users
  	resources :cards
 
end
