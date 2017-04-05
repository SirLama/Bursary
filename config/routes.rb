Rails.application.routes.draw do
  get 'loans/new'

  get 'sessions/new'

  root 'static_pages#home'

  get 'about'=> 'static_pages#about'
  get 'contact'=> 'static_pages#contact'
  get 'signup'=>'users#new'
  get 'login' =>'sessions#new'
  post 'login' =>'sessions#create'
  delete 'logout' =>'sessions#destroy'
  get 'edit' => 'users#edit'
  resources :users
  resources :loans
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
