Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'song_info', to: 'song_info#index'
      get 'search', to: 'search#index'
    end
  end
end
