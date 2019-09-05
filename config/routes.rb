Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/cats', to: 'cats#index'
  get '/cats/new', to: 'cats#new'
  get '/cats/:id', to: 'cats#show'
  post '/cats', to: 'cats#create'
  get '/cats/:id/edit', to: 'cats#edit'
  patch '/cats/:id', to: 'cats#update'


#admin functionality
namespace :admin do
  get '/cats', to: 'cats#index'
  get '/cats/:id', to: 'cats#show'
  get '/cats/:id/edit', to: 'cats#edit', as: :edit
  patch '/cats/:id', to: 'cats#update'
  delete '/cats/:id', to: 'cats#destroy'
end

end
