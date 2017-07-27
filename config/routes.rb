Rails.application.routes.draw do
  get 'welcome/index'

  resources :projects do
    resources :punches
  end

  root 'welcome#index'
end
