Knight::Application.routes.draw do
  # Sidekiq Web Interface
  # TODO: Authentication
  # require 'sidekiq/web'
  # constraints admin_constraint do
  #   mount Sidekiq::Web, at: '/admin/sidekiq', as: :sidekiq
  # end

  # Static Pages
  match '/:id' => 'high_voltage/pages#show', as: :static, via: :get

  # Root
  root to: 'high_voltage/pages', id: :index
end
