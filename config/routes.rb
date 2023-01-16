Rails.application.routes.draw do
  get 'lesson_class/index'
  devise_for :users
  root to:"lesson_class#index"
end
