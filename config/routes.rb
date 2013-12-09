Expansao::Application.routes.draw do
  resources :documentos_fin_fiscs

  	 resources :interessados
  	 resources :aprov_estabelecimentos

	  resources :oprov_proj_arqus

	  resources :doc_ponto_comers

	  resources :valid_ponto_comers

	  resources :trein_prof_titulars

	  resources :trein_coord_pedags

	  resources :trein_oper_franquia

	  resources :trein_consul_comercials

	  resources :pagto_taxas

	  resources :pro_contratos

	  resources :planilhas

	  resources :cronogramas

	  resources :redacaos

	  resources :projeto_arquitetonicos

	  resources :doc_fiscais

	  resources :carta

 

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
