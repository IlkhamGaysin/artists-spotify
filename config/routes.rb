Rails.application.routes.draw do
  scope defaults: { format: :json } do
    root to: "api/v1/artists#index"

    constraints subdomain: 'api' do
      scope module: 'api' do
        namespace :v1 do
          resources :artists, only: [:index]
        end
      end
    end
  end
end
