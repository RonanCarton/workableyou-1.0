Workableyou::Application.routes.draw do


  #resources :forem_subscriptions
  #
  #resources :forem_views
  #
  #resources :forem_categories

  resources :wposts

  resources :wtopics

  resources :wforums

  resources :forums

  resources :articles do
  resources :comments
  end

  resources :search_suggestions

#mount Forem::Engine, :at => "/forums" #,:action => "index" #, :as => "forums_engine"

  mount Forem::Engine => "/forums"

  resources :authentications

  #match 'users/:id', :to => "users#show", :as => :user
  #match "/auth/:provider/callback" => "sessions#create"
  match '/auth/:provider/callback' => 'authentications#create'


  resources :applications

  resources :events

  resources :jobs


  #scope '(:locale)' do
  #  get 'jobs/autocomplete_job_location'
  #  end

  match "/wforums" => "wforums#index" #, :as => "forums"

  match "/comments" => "comments#index" #, :as => "comments"



  authenticated :user do
    root :to =>  "home#index"
  end
  root :to =>     "home#index"
  devise_for :users
  resources :users
end

  #root :to => 'welcome#index'






  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'

