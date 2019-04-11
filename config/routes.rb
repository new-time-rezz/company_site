Rails.application.routes.draw do
  resources :contacts
  get 'welcome/homepage'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'welcome/create'
end

