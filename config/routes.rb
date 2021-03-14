Rails.application.routes.draw do
  resources :sms_messages, only: [:index, :create]
  resources :quizzes, only: [:index]
  resources :topics, only: [:index]
  resources :quizzes, only: [:index]
  resources :favorites, only: [:index, :show, :create, :destroy]
  resources :breakup_messages, only: [:index, :show]
  resources :comments, except: [:new, :edit]
  resources :posts
  resources :users, except: [:new, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
