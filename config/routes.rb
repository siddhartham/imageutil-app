Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, :controllers => { :registrations => 'users/registrations' }
  resources :projects do
    resources :folders
  end
  resources :analytics
  resources :messages
  resources :invoices
  root to: "home#index"
end