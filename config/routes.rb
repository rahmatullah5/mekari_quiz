Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins
  resources :quizzes
  resources :levels
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
