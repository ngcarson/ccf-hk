Rails.application.routes.draw do
  root "pages#home"
  get "database" => "pages#database" # Creates database_path

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
