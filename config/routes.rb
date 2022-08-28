Rails.application.routes.draw do
  namespace 'api' do
    resources :content
  end
end
