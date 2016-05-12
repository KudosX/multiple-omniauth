Rails.application.routes.draw do
  
  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }, :path_prefix => 'my' do 
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users

  root to: "static#home"
end
