Rails.application.routes.draw do

  root 'messages#index'

  # Routes for the Message resource:
  # CREATE
  get "/messages/new", :controller => "messages", :action => "new"
  post "/create_message", :controller => "messages", :action => "create"

  # READ
  get "/messages", :controller => "messages", :action => "index"
  get "/messages/:id", :controller => "messages", :action => "show"

  # UPDATE
  get "/messages/:id/edit", :controller => "messages", :action => "edit"
  post "/update_message/:id", :controller => "messages", :action => "update"

  # DELETE
  get "/delete_message/:id", :controller => "messages", :action => "destroy"
  #------------------------------

  # Routes for the Hospital resource:
  # CREATE
  get "/hospitals/new", :controller => "hospitals", :action => "new"
  post "/create_hospital", :controller => "hospitals", :action => "create"

  # READ
  get "/hospitals", :controller => "hospitals", :action => "index"
  get "/hospitals/:id", :controller => "hospitals", :action => "show"

  # UPDATE
  get "/hospitals/:id/edit", :controller => "hospitals", :action => "edit"
  post "/update_hospital/:id", :controller => "hospitals", :action => "update"

  # DELETE
  get "/delete_hospital/:id", :controller => "hospitals", :action => "destroy"
  #------------------------------

  # Routes for the Site resource:
  # CREATE
  get "/sites/new", :controller => "sites", :action => "new"
  post "/create_site", :controller => "sites", :action => "create"

  # READ
  get "/sites", :controller => "sites", :action => "index"
  get "/sites/:id", :controller => "sites", :action => "show"

  # UPDATE
  get "/sites/:id/edit", :controller => "sites", :action => "edit"
  post "/update_site/:id", :controller => "sites", :action => "update"

  # DELETE
  get "/delete_site/:id", :controller => "sites", :action => "destroy"
  #------------------------------

  devise_for :users
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
