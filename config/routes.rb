Rails.application.routes.draw do
	resources :redactor_assets

	post "redactor_assets/create"

end
