Openmicrosite::Application.routes.draw do

  # Home if logged in
  authenticated :user do
    root :to => redirect('/webcast')
  end

  # Home
  root :to => 'pages#webcast'

  # Authentication
  #devise_for :admins
  devise_for :users, controllers: { sessions: "sessions" }

  # Static pages
  get 'landing' => 'pages#landing'
  match 'home' => 'pages#home', via: [:get, :post]
  get 'register' => 'pages#register'
  get 'about' => 'pages#about'
  get 'api' => 'pages#api'
  get 'webcast' => 'pages#webcast'
  get 'alreadyregistered' => 'pages#alreadyregistered'
  get 'help' => 'pages#help'
  get 'privacy' => 'pages#privacy'
  get 'terms' => 'pages#terms'
  get 'cookies' => 'pages#cookies'
  #get 'request_a_kam' => 'pages#request_a_kam'
  #get 'faq' => 'pages#faq'
  #get 'evaluation' => 'pages#evaluation'
  #get 'firstinteractive' => 'pages#firstinteractive'
  # get 'archive' => 'pages#archive'


  # Feedback/submissions
  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post
  match 'feedback' => 'feedback#new', :as => 'feedback', :via => :get
  match 'feedback' => 'feedback#create', :as => 'feedback', :via => :post

  # First Interactive/submissions
  #match 'contact' => 'contact#new', :as => 'contact', :via => :get
  #match 'contact' => 'contact#create', :as => 'contact', :via => :post
  #match 'firstinteractive' => 'firstinteractive#new', :as => 'firstinteractive', :via => :get
  #match 'firstinteractive' => 'firstinteractive#create', :as => 'firstinteractive', :via => :post

  # Second Interactive/submissions
  #match 'contact' => 'contact#new', :as => 'contact', :via => :get
  #match 'contact' => 'contact#create', :as => 'contact', :via => :post
  #match 'secondinteractive' => 'secondinteractive#new', :as => 'secondinteractive', :via => :get
  #match 'secondinteractive' => 'secondinteractive#create', :as => 'secondinteractive', :via => :post
end
