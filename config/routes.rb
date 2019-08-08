Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :admins
  resources :levels, only: [:index, :show] do
    resources :quizzes, only: [:index] do
      post :answer
    end
  end

  root 'levels#index'
end
