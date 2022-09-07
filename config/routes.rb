Rails.application.routes.draw do
  resources :leases, only: [:create, :destroy]
  resources :tenants, only: [:create, :destroy, :show, :index, :update]
  resources :apartments, only: [:create, :destroy, :show, :index, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
