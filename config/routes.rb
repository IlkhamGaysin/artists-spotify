Rails.application.routes.draw do
  scope defaults: { format: :json } do
    root to: "api/v1/artists#index"

    namespace :api do
      namespace :v1 do
        resources :artists, only: %i(index update)

        namespace :filters do
          resources :artists, only: %i(index)
        end
      end
    end
  end
end
