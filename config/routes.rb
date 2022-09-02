Rails.application.routes.draw do
  namespace 'api' do
    resources :contents, only: [:index, :show]
  end
end
