Rails.application.routes.draw do
  devise_for :users
  get 'admin/index'

  root 'welcome#index'
  get 'worker' 		=> 'welcome#worker'
  get 'deploy' 		=> 'welcome#deploy'
  get 'search_a'    => 'search#search_results_for_a_keyword'
  get 'search' 		=> 'welcome#search'
  get 'get_latest' 	=>  'welcome#latest_movies'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
