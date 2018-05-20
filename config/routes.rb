Rails.application.routes.draw do
  root 'cover_page#index'
  resources :jobs
end
