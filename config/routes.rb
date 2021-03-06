Rails.application.routes.draw do
  root to: "apitome/docs#index"

  scope defaults: { format: :json } do
    namespace :api do
      namespace :v1 do
        resources :artists, only: %i[index update]

        namespace :filters do
          resources :artists, only: %i[index]
        end
      end
    end
  end
end
