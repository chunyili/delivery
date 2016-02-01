Rails.application.routes.draw do
  get 'routes/test'
  resources :instances
  resources :zipcodes
  resources :store_adds
  resources :routes
  resources :holds
  resources :customer_adds
  resources :carries
  resources :couriers
  resources :delivers
  resources :packages
  resources :customers
  resources :stores
  devise_for :users
  devise_scope :user do
    authenticated :user do
       root :to => 'customers#index', as: :authenticated_root
    end
    unauthenticated :user do
      root :to => 'delivery#homepage', as: :unauthenticated_root
    end
  end
  resources :advisors
  post 'delivery/Tracking'
  get 'delivery/homepage'

  get 'delivery/login'

  get 'delivery/store'
  get 'delivery/cannotfind'

  get 'delivery/Tracking'
  post 'delivery/store'




  get 'delivery/about_us'

  root 'delivery#homepage'

  resources :customers

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
