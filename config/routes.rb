Rails.application.routes.draw do
  devise_for :users
  root to: 'schedules#index'
  resources :shedules, only: [:index]
  resources :staffs, only: [:index, :new]
end
