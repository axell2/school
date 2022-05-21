Rails.application.routes.draw do
  resources :student_grades
  resources :grades
  resources :teachers
  resources :students
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
