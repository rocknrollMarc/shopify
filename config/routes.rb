
Contestapp::Application.routes.draw do

  resources :products do
    collection do
      get 'import'
    end
    resources :variants
  end

  resources :accounts do
    member do
      get 'test_connection'
    end
  end

  get "dashboard/index"
  post "create_contest" => 'dashboard#create_contest'

  root 'dashboard#index'
end
