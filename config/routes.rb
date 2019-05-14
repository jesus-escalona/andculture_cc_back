Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      get 'breweries', to: 'breweries#by_city', constraints: ->(req) { req.params[:by_city].present? }
      resources :breweries, only: %i[index show]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
