Rails.application.routes.draw do
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :projects, only: %i[index show]

  # Endpoint to send email
  resources :contacts, only: [:create]
  post '/create', to: 'contacts#create'
end
