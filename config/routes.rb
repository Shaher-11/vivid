Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  #if Rails.env.development?
    # mount LetterOpenerWeb::Engine, at: "/letter_opener"
  #end
  authenticate :user do
    resources :timelines,
      only: [:index, :show],
      param: :username
  resources :posts, only: [:create, :show]
  end
end
