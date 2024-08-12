Rails.application.routes.draw do

  root "articles#index"

  # Crea las rutas para los recursos anidados
  resources :articles do
    resources :comments
  end

  # Rutas implícitas de Articles
  # resources :articles

  # Rutas explícitas de Articles
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"

end
