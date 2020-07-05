Rails.application.routes.draw do
  # get 'home/top'
  root "home#top"

  devise_for :users

  devise_scope :user do
  get "login" => "devise/sessions#new"
  get "signup" => "devise/registrations#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
