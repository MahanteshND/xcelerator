Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations =>  "registrations", sessions: 'sessions'}
  devise_scope :user do
    get 'login', to: 'devise/sessions#new'
    get 'signup', to: 'devise/registrations#new'
  end
  devise_scope :user do
    get 'signout',  to: 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "topic_of_interests#index"
  resource :users
  resource :topic_of_interests
end
