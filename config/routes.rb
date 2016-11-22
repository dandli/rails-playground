Rails.application.routes.draw do
  root "home#index"
  get "/products/filter_products", to: "products#filter_products"
  resources :categories
  resources :products

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
