Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    collection do
      # /restaurants/review
      # get 'top', to: 'restaurants#top', as: :top_restaurants
      # after here, go to controller and code top method
      # get :top # generates '/restaurants/top'
      # get '/balances', to: 'balances#controller'
      get :review
    end

    member do
      # /restaurants/:id/review
      get :review
    end

    # NESTING:
    # /restaurants/:restaurant_id/reviews
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end
