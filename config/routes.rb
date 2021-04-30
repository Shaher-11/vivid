Rails.application.routes.draw do
  devise_for :users
  root to: 'home#index'
  #if Rails.env.development?
    # mount LetterOpenerWeb::Engine, at: "/letter_opener"
  #end
  
end
