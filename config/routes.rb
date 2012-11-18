Pollster::Application.routes.draw do
  root to: 'polls#index'
  resources :polls do
    resources :answers, only: [:create, :destroy]
  end
end
