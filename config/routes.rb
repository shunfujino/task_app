Rails.application.routes.draw do
  get "/" => "posts#index"
  get 'posts/new' => "posts#new"
  post "posts/create" => "posts#create"
  post "posts/:id/destroy" => "posts#destroy"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  get "posts/:id" => "posts#show"



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
