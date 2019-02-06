Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root "static_pages#home"

  resources :users do
    resources :jobs, controller: "user/jobs"
    resources :applications, controller: "user/applications"
  end
end
