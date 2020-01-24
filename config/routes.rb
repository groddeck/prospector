Rails.application.routes.draw do
  resources :stage_events
  resources :notes
  resources :prospects
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  patch '/prospects/:id/advance', to: 'prospects#advance'
  patch '/prospects/:id/revert', to: 'prospects#revert'
  post '/prospects/:id/notes', to: 'prospects#note'
end
