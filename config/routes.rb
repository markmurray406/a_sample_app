ASampleApp::Application.routes.draw do
  resources :occupations


  # See omrails example and http://stackoverflow.com/questions/7086583/creating-a-users-show-page-using-devise
  get "users/show"

  devise_for :users
  match 'users/:id' => 'users#show', as: :user

  # See lisitng 5.32
  get "users/new"

  # to see how this is called see controllers/static_pages_controllers.rb
  # this looks for a home.html.erb file in the static_pages folder
  #get "static_pages/home"

  # See Listing 5.23
  root to: 'static_pages#home'

  # -------------- Introduction and Setup pages for company---------------------
  match '/company1', to: 'static_pages#company1'
  # -------------- Introduction and Setup pages ---------------------
  match '/user1', to: 'static_pages#user1'
  match '/career', to: 'static_pages#career'
  match '/skills', to: 'static_pages#skills'

  # -------------- Signup pages ---------------------
  # See Listing 5.32
  match '/signup', to: 'users#new'

  # -------------- Help etc pages ---------------------
  # See Listing 5.21
  match '/help', to: 'static_pages#help'
  match '/about', to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'

  # -------------- Users pages ---------------------
  # see railscasts, http://railscasts.com/episodes/241-simple-omniauth-revised 
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
