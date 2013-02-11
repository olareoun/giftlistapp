Giftlistapp::Application.routes.draw do

  devise_for :users

  resources :gift_lists do
    resources :gifts
  end

  scope "/user" do
  	resources :gift_lists
  end

  match 'user' => 'gift_lists#index', as: :user_root

  match 'home' => 'home#show'

  root :to => "home#index"

end
