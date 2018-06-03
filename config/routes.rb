Rails.application.routes.draw do
  resources :guests
  resources :parties
  get 'orzel_czy_reszka' => 'game#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
