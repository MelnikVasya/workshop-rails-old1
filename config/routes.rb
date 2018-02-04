Rails.application.routes.draw do
  root 'welcome#index'

  scope module: :web do
    get 'welcome/index'

    resources :articles do
      scope module: :articles do
        resources :comments
      end
    end
  end
end
