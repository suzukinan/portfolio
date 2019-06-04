Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "projects#index"

  resources :projects, only: [:index, :new] do
    new do
      get 'contact'
      get 'aboutme'
    end
  end


end
