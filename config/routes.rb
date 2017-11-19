Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   root 'manages#index'
   resources :manages
   resources :rooms
   resources :ideas
   get 'record1' => 'static_pages#record1'
   get 'record2' => 'static_pages#record2'
   get 'index1' => 'manages#index1'
   get 'index2' => 'rooms#index2'
   get 'index3' => 'ideas#index3'

end
