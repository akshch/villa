Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #resources :villas
  get '/villas', to: 'villas#index'
  get '/calculate-rates', to: 'villas#calculate_rates'
end
