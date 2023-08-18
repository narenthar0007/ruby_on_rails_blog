Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # put "blog_posts/:id/likee" , to: "blog_post#likee" , as: :likee_page
  get "/blog_posts/new" ,to: "blog_posts#new" ,as: :blog_post_new
  get "/blog_posts/:id/edit", to: "blog_posts#edit" ,as: :blog_post_edit
  get "/blog_posts/:id" , to: "blog_posts#show" ,as: :blog_post
  patch "/blog_posts/:id" , to: "blog_posts#update", as: :blog_post_update 
  delete "/blog_posts/:id" , to: "blog_posts#destroy"
  post "/blog_posts" , to: "blog_posts#create", as: :blog_posts
  put 'posts/:id/upvote' ,to: 'blog_posts#upvote' , as: 'upvote_home'
  put 'posts/:id/like' ,to: 'blog_posts#likee' , as: 'upvote_likee'
  get '/my_blog',to: 'blog_posts#my_blog' ,as:"my_blog"
  put 'posts/:id/view' ,to: 'blog_posts#view' , as: 'upvote_view'
  get '/search' ,to: "blog_posts#search"
  get '/category' ,to: "blog_posts#category"
  get '/liked_blog', to: "blog_posts#liked_blog", as: :liked
  get "/index", to: "blog_posts#index" ,as: :blog_post_home
  get "/blog_post/treanding", to: "blog_posts#treanding" ,as: :treanding_blog
  delete "/likes/:id" , to: "liks#destroy" ,as: :del_lik 


  root "blog_posts#home"
  resources :blog_posts do 
    resources :narens
  end
  resources :liks ,only:[:create, :destroy]
  
end

