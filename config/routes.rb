Rails.application.routes.draw do
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'students#jimmies'
  resources :students
  resources :cohorts
  resources :teachers
  resources :courses
end
