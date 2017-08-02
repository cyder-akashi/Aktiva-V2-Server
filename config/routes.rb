Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'song_info/show'
    end
  end
end
