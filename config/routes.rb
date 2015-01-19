Blog::Application.routes.draw do
  
  #resources :posts
  #resources :comments
  
  resources :posts do 
    resources :comments
  end
  
  

	get "/welcome/index" => "welcome#index"

	get "/articles/new" => "articles#new"
	post "/articles/create" => "articles#create"
	get "/articles/list" => "articles#list"
	get "/articles/detail/:id" => "articles#detail"

  #1
  root to: "welcome#index"
  
  #2
	get "/articles/search" => "articles#search"
end
