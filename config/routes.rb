Rails.application.routes.draw do
  root 'animal#index'
  get 'animal/index'
  get 'animal/info'
  post '/write' => 'animal#write'
  get '/info' => 'animal#info'
  get '/write' => 'animal#write'
  
  
  get 'food/info'
  post '/a_write' => 'food#write'
  get '/a_info' => 'food#info'
  get '/a_write' => 'food#write'
  
  
  get 'movie/info'
  post '/b_write' => 'movie#write'
  get '/b_info' => 'movie#info'
  get '/b_write' => 'movie#write'
  
  
  get 'myboard/info'
  post '/c_write' => 'myboard#write'
  get '/c_write' => 'myboard#write'
  get '/c_info' => 'myboard#info'
  
  
  get 'bucketlist/bucketlist'
  post '/d_write' => 'bucketlist#write'
  get '/d_write' => 'bucketlist#write'
  get '/d_info' => 'bucketlist#info'
  
  
  
  get '/d_destroy/:id' => 'bucketlist#destroy'
  get '/d_update_view/:id' => 'bucketlist#update_view'
  post '/d_update/:id' => 'bucketlist#update'
  
  get 'destroy/:id' => 'animal#destroy'
  get 'update_view/:id' => 'animal#update_view'
  post 'update/:id' => 'animal#update'
  
  get '/a_destroy/:id' => 'food#destroy'
  get '/a_update_view/:id' => 'food#update_view'
  post '/a_update/:id' => 'food#update'
  
  get '/b_destroy/:id' => 'movie#destroy'
  get '/b_update_view/:id' => 'movie#update_view'
  post '/b_update/:id' => 'movie#update'
  
  get '/c_destroy/:id' => 'myboard#destroy'
  get '/c_update_view/:id' => 'myboard#update_view'
  post '/c_update/:id' => 'myboard#update'
  
  
  
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
