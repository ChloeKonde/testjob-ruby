Rails.application.routes.draw do
  namespace 'api' do
    namespace 'v1' do
      post 'todos', to: 'todos#create', as: 'todos/create'
      resources :projects do
        resources :todos
      end
    end
  end
end
