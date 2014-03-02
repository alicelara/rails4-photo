PhotogurRails4::Application.routes.draw do
  get 'pictures' => 'pictures#index'
  
  get 'pictures/:id' => 'pictures#show', as: "picture"
  
  post 'pictures' => 'pictures#create'
  get 'pictures/new' => 'pictures#new'

  get 'pictures/:id/edit' => "pictures#edit", as: "edit_picture"
  patch 'pictures/:id' => 'pictures#update'

  delete 'pictures/:id' => 'pictures#destroy', as: "delete_picture"

  root :to => "pictures#index"
end
