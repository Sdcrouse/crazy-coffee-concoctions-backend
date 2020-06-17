Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do # Version 1
      resources :concoctions, only: [:index, :show, :create]
    end
  end

end
