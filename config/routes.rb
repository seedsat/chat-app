Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  resources :users, only: [:edit, :update]
  resources :rooms, only: [:new, :create]
  ## ルーティングをネストすることでどこのルームでメッセージを送るかをURLで判断する。
  ## アソシエーションの関係にあるもの同志を紐づける
  ## とても大切な知識である
  resources :rooms, only: [:new, :create, :destroy] do
    ## メッセージを送るにはどのルームでメッセージを送るのかを判別しなければならない
    ## 親にroomsコントローラーにしてネストすることでルームのidをURLから取得することができる
    resources :messages, only: [:index, :create]
  end
end
