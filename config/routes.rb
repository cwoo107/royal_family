Rails.application.routes.draw do
  resources :full_profiles
  resources :personals
  resources :profiles
  devise_for :users
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end

  root 'profiles#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
