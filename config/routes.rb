Rails.application.routes.draw do
  resources :medications
  resources :diagnoses
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
