Rails.application.routes.draw do
  get 'measures/new'
  get 'measures/create'
  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :measures, only: [:new, :create, :edit, :update]
  root "main#home"
end
