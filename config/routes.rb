Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
resources :students, only: [:new, :edit, :show, :index, :create, :edit, :update]
resources :school_classes, only: [:new, :edit, :show, :index, :create, :edit, :update]
end
