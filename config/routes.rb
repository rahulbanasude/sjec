Rails.application.routes.draw do
  root to: 'departments#index'
  resources :departments, only: [:index], shallow: true do

resources :semesters , only: [:index] do
resources :subjects, only: [:index] do
resources :papers, only: [:index]
end
end
end
get "department/:department_id/semester/" => "semesters#index", as: "semster"
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
