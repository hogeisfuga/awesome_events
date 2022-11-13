Rails.application.routes.draw do
  resources :events do
    resources :tickets
  end
  root 'welcome#index'
  get "/auth/:provider/callback" => "session#create"
  delete "/logout" => "session#destroy"

  resources :retirements
end
