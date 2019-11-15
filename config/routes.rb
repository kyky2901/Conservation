Rails.application.routes.draw do
  root 'conservations#index'
  resources :inspirations
  resources :tips
  get 'recycleable_items', to: 'conservations#recycleable_items'
  get 'how_to_compost', to: 'conservations#how_to_compost'
  get 'references', to: 'conservations#references'
  get 'volunteer', to: 'conservations#volunteer'
  get 'contact', to: 'conservations#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
