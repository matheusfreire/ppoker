Rails.application.routes.draw do

  devise_for :users
  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :user_stories
  resources :pokers do
    collection do
      get 'new/:id_us', to: 'pokers#newpoker', as: 'newpoker'
    end
  end

end
