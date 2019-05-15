Rails.application.routes.draw do
  resources :songs
  get 'song/new'

  get 'song/create'

  get 'song/edit'

  get 'song/update'

  get 'song/index'

  get 'song/show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
