Rails.application.routes.draw do
  resources :artists do
    resources :songs, shallow: true
  end

end
