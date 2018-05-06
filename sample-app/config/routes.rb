Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  get '/hello_url' => 'api/pages#hello_action'
  get '/time_url' => 'api/pages#time_action'

  get '/about_me' => 'api/pages#about' 
  get '/portfolio' => 'api/pages#portfolio'
  get '/contact' => 'api/pages#contact'
end
