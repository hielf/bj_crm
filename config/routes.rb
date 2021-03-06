Cmwp::Application.routes.draw do
  resources :users do
    get 'user_cancel', :on => :member
  end
  resources :usrrels
  # resources :loan_steps
  resources :notices
  # resources :loansteptwoguarantors
  # resources :loanstepeightguarantors do
  #   get 'add_new', :on => :member
  # end
  resources :custs do
    resources :custloans
    resources :loanreports
  end
  resources :custloans do
    resources :loan_steps do
      get 'add_new', :on => :member
    end
    get 'roll_back', :on => :member
    get 'paymentplan', :on => :member
    # get 'loan_add',  :on => :member
    # resources :build, controller: 'custloans/build'
    # get 'nextstep', :on => :member
    # get 'prevstep', :on => :collection
  end
  resources :loanreports do
    resources :loan_report_steps
    get 'loan_interest', :on => :member
  end
  resources :custrels
  resources :sessions, :only => [:new, :create, :destroy]
  resources :departments, :only => [:index, :show] do
    resources :deptindices do
      get 'dept_index', :on => :member
    end
  end
  resources :branches, :only => [:index, :show] do
    get 'typebrokers', :on => :member
    resources :branchindices do
      get 'branch_index', :on => :member
    end
  end
  resources :brokers, :only => [:index, :show] do
    resources :brokerindices do
      get 'broker_index', :on => :member
    end
    member do
      get :relbrokers
    end
  end
  resources :categories do
    get 'search', :on => :collection
  end
  
  root :to => 'pages#home'

  match '/contact', :to => 'pages#contact'
  match '/about',   :to => 'pages#about'
  match '/help',    :to => 'pages#help'
  match '/signup',  :to => 'users#new' 
  match '/signin',  :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'  
  
  match '/todo',    :to => 'pages#todo'  
  
  # match 'categories' => 'categories#show', :via => :get
  
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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
