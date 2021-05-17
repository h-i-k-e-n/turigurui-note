Rails.application.routes.draw do
  devise_for :users
  root to: 'fishes#index'

      resources :fishes,except: [ :new ] do
        collection do
          get "search"
        end
      end

end
