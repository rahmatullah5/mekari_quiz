Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins
  # resources :quizzes
  resources :levels, only: [:index, :show] do
    resources :quizzes, only: [:index, :show] do
      post :answer
    end
  end

  root 'levels#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
