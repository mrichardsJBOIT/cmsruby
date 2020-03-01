Rails.application.routes.draw do


  mount Ckeditor::Engine => '/ckeditor'
  resources :categories, only: [:show]
  resources :pages, only: [:show]
  namespace :admin do
    resources :types, except: [:show]
    resources :menus, except: [:show]
    resources :pages #/admin/pages
    resources :categories
  end

  Page.where.not("slug", nil).all.each do |page|
    get "/#{page.slug}", controller: "pages", action: "show", id: page.id
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'admin/pages#index'
end
