TestBlog::Application.routes.draw do



#实现查看指定日期的文章，例如 blog/articles/2011-02-14
 # match 'blog/articles/:date' , :action=>'search', :controller=>'blog',
 #       :date=>/\d{4}-\d{2}-\d{2}/

#实现查看某一年的所有图片，例如photos/2011/all
 # match 'photos/:year/all' ,:action=>'search' , :controller=>'photos' ,
 #       :year=> /\w{4}/

#实现查看某个关键字的所有文章，例如articles/show/rails
 # match 'articles/show/:key' => 'articles#searchkey', :via => :POST

#实现按编号查看某个分类下的所有文章，例如blog/index/1
 # match 'blog/index/:category' =>"blog#index", :constraints => {:category => /\d/}

# 实现用户对某篇文章的管理操作，例如users/1/admin
# match 'users/:id/admin' => 'users#admin', :as => :admin

#实现用户登录后进入的页面
# match 'user/homepage/', :action=>'login', :controller=>'users' ,:defaults=>{:homepage=>'usercenter'}

#  查看用户创建的分类信息
#  resources :users do
#    resources :categories
#  end

# 将welcome.html作为默认首页
 # root :to => "index.html"
  
  root :to => "home#index"
#  创建对文章的资源路由
# resources :articles
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
