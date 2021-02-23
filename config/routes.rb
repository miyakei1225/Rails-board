Rails.application.routes.draw do
  devise_for :users
  resources :posts
    get 'test/index'
    get 'test/display'  => 'test#display'

    # こんな書き方もあるよ！
    # get 'test/index', to: 'test#index', as: 'index'

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
