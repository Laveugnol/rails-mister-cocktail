Rails.application.routes.draw do
  # get 'review/new'

  # get 'review/create'

  # get 'doses/new'

  # get 'doses/create'

  # get 'doses/destroy'

  # get 'cocktails/index'

  # get 'cocktails/show'

  # get 'cocktails/new'

  # get 'cocktails/create'

  # get 'cocktails/edit'

  # get 'cocktails/update'

  # get 'cocktails/destroy'

  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :cocktails do
    resources :reviews, only: [:new, :create]
    resources :doses, only: [:new, :create, :destroy]
  end

  root 'cocktails#index'
end
