Producer::Application.routes.draw do
    root :to => 'pages#index'

    resources :categories
    resources :posts do
        resources :comments
    end
end
