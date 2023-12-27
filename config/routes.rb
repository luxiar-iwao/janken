Rails.application.routes.draw do
  root "janken#select"
  get 'janken/select'
  get 'janken/result'
  get 'janken/history'
  get 'result', to: 'janken#result'
  get 'history', to: 'janken#history'
end
