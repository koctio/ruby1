Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
  
  #CRUD
  resources :tovar do
    get 'purge'=>'tovar#purge', on: :collection, as: 'purge'
  end
  #get 'tovar'=>'tovar#index', as: 'tovars'
  #get 'tovar/:id(.:format)'=>'tovar#show'
  #post 'tovar/:id(.:format)'=>'tovar#edit'
  
end
