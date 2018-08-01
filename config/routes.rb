Rails.application.routes.draw do
  
  root "pages#home" #this is the home page
  get '/about', to:"pages#about"
  get '/help', to:"pages#help"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :todos
end
