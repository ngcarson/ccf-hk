Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  root "pages#home"
  get "countdown" => "pages#countdown" # Creates countdown_path
  get "database" => "pages#database" # Creates database_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
