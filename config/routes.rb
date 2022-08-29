Rails.application.routes.draw do
  namespace 'api' do
    resources :content, only: [:index, :show]
  end
end
