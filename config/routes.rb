Rails.application.routes.draw do
  get 'janken/select'
  get 'janken/result'
  get 'janken/history'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
