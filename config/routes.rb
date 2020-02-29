Rails.application.routes.draw do
  resources :notes, except: [:show] do
    collection do
      post :confirm
    end
  end
end
