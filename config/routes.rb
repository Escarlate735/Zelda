Rails.application.routes.draw do
  get 'welcome/index'

  	resources :clientes do
  		resources :pacotes
  	end
  	resources :articles

	root 'welcome#index'
end
