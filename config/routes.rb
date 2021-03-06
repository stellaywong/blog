Rails.application.routes.draw do
  get 'welcome/index'

  root 'welcome#index'  #so visiting localhost:3000 (app root) will also direct to the welcome page

  resources :articles do
    resources :comments   #nested resource: capturing the hierarchical relationship that exists between articles and comments.
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
