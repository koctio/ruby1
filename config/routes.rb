Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  
  #CRUD
  #resources :tovar
  get 'tovar(.:format)'=>'tovar#index', as: 'tovars'
  get 'tovar/:id(.:format)'=>'tovar#show'
  post 'tovar/:id(.:format)'=>'tovar#edit'
  
end
