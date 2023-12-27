Rails.application.routes.draw do
  root "janken#select"
  get '/select', to: 'janken#select'
  get '/result', to: 'janken#result'
  get '/history', to: 'janken#history'
end
