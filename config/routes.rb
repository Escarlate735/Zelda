Rails.application.routes.draw do
  get 'welcome/index'

  	resources :clientes, :articles

	root 'welcome#index'
end
