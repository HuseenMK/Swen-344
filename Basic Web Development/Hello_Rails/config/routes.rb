Rails.application.routes.draw do
  get 'info/index'

  get 'welcome/index'
 
  root 'welcome#index'
end