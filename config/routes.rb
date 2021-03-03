Rails.application.routes.draw do
  get 'list/index'
  root 'lists#index'
  get 'home/about'
  get 'home/team'
  get 'home/blog'
  get 'say/hello'
  get 'say/goodby'
  get 'files' => 'files#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
