Rails.application.routes.draw do
  root 'main#home'

  get 'apartments' => 'apartments#index'
  get 'apartments/new' => 'apartments#new'
  post 'apartments/new' => 'apartments#create'
  get 'apartments/:id/edit' => 'apartments#edit_address', as: :edit_address
  post 'apartments/:id/edit' => 'apartments#update_address', as: :update_address
  get 'apartments/:id/update' => 'apartments#edit', as: :edit_apartment
  post 'apartments/:id/update' => 'apartments#update', as: :update_apartment
  get 'apartments/:id' => 'apartments#show', as: :apartment
  delete 'apartments/:id' => 'apartments#destroy', as: :destroy_apartment
  get 'apartments/:id/application' => 'apartments#application', as: :application_apartment

  get 'signup' => 'users#signup_landing'
  get 'signup/tenant' => 'users#new_tenant'
  get 'signup/landlord' => 'users#new_landlord'
  resources :users

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  get 'profile' => 'users#profile'
  get 'profile/manage_properties' => 'users#landlord_manage_properties'
  get 'profile/manage_tenants' => 'users#landlord_manage_tenants'
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
