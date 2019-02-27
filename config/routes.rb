Rails.application.routes.draw do
  devise_for :users

  # redireciona a una "landing page" de no estar authenticado 
  unauthenticated  do
    root to: 'landing_page#home'
    get '/about', to: 'landing_page#about'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
