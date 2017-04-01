Rails.application.routes.draw do

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	# Rails should map requests to 'welcome/index'
  get 'welcome/index'

  # Resources are abstract representations of objects that can be used within an object.
  # Provides easy access for CRUD operations.
  # Routes are automatically created. Yay rails!
  resources :articles do 
  	resources :comments
  end

  # Tells rails to map the root of the application to welcomecontroller's index function
  root 'welcome#index'
end