Rails.application.routes.draw do
  resources :animals
  match '*all' => 'application#cors', via: :options
end
