Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'

  

  mount_devise_token_auth_for 'Admin', at: 'admin_auth'

  mount_devise_token_auth_for 'BizUser', at: 'b_auth'
  as :biz_user do
    # Define routes for BizUser within this block.
  end
  as :admin do
    # Define routes for Admin within this block.
  end
  
  #static pages
  root 'static_pages#index'

  # amend user info
  put '/users/:id' => 'users#update'
  # get user info
  get '/users/:id' => 'users#show'

  #index services under the sun
  get '/services' => 'services#index'
  #biz_user add service
  post '/services' => 'services#create'
  #biz_user update service name
  put '/services/:id' => 'services#update'
  #biz_user selects one service
  get '/services/:id' => 'services#show'
  #biz_user delete service
  delete '/services/:id' => 'services#destroy'

  #amend biz_user info
  put '/biz_users/:id' => 'biz_users#update'
  # get biz_user info
  get '/biz_users/:id' => 'biz_users#show'


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
