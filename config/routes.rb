Rails.application.routes.draw do
  # Routes for the Character resource:
  # CREATE
  get '/new_character' => 'characters#new'
  get '/create_character' => 'characters#create'

  # READ
  get '/characters' => 'characters#index'
  get '/characters/:id' => 'characters#show'

  # UPDATE
  get '/characters/:id/edit' => 'characters#edit'
  get '/characters/:id/update' => 'characters#update'

  # DELETE
  get '/characters/:id/destroy' => 'characters#destroy'
  #------------------------------

  # Routes for the Plaid resource:
  # CREATE
  get '/new_plaid' => 'plaids#new'
  get '/create_plaid' => 'plaids#create'

  # READ
  get '/plaids' => 'plaids#index'
  get '/plaids/:id' => 'plaids#show'

  # UPDATE
  get '/plaids/:id/edit' => 'plaids#edit'
  get '/plaids/:id/update' => 'plaids#update'

  # DELETE
  get '/plaids/:id/destroy' => 'plaids#destroy'
  #------------------------------

  # Routes for the Actor resource:
  # CREATE
  get '/new_actor' => 'actors#new'
  get '/create_actor' => 'actors#create'

  # READ
  get '/actors' => 'actors#index'
  get '/actors/:id' => 'actors#show'

  # UPDATE
  get '/actors/:id/edit' => 'actors#edit'
  get '/actors/:id/update' => 'actors#update'

  # DELETE
  get '/actors/:id/destroy' => 'actors#destroy'
  #------------------------------

  # Routes for the Show resource:
  # CREATE
  get '/new_show' => 'shows#new'
  get '/create_show' => 'shows#create'

  # READ
  get '/shows' => 'shows#index'
  get '/shows/:id' => 'shows#show'

  # UPDATE
  get '/shows/:id/edit' => 'shows#edit'
  get '/shows/:id/update' => 'shows#update'

  # DELETE
  get '/shows/:id/destroy' => 'shows#destroy'
  #------------------------------

  # Routes for the Network resource:
  # CREATE
  get '/new_network' => 'networks#new'
  get '/create_network' => 'networks#create'

  # READ
  get '/networks' => 'networks#index'
  get '/networks/:id' => 'networks#show'

  # UPDATE
  get '/networks/:id/edit' => 'networks#edit'
  get '/networks/:id/update' => 'networks#update'

  # DELETE
  get '/networks/:id/destroy' => 'networks#destroy'
  #------------------------------

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
