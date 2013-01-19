Giftlistapp::Application.routes.draw do

  resources :gift_lists do
    resources :gifts
  end


  root :to => "home#index"

end
