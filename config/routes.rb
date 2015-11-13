Rails.application.routes.draw do

  namespace :admin do
    DashboardManifest::DASHBOARDS.each do |dashboard_resource|
      resources dashboard_resource
    end

    root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
  end

  root 'home#new'

  get 'new', to: 'home#new', as: :new

  match 'save', to: 'contact#save', as: :save_contact, via: [:post, :put, :patch]

  get 'services', to: 'home#service', as: :service
  get 'profile', to: 'home#profile', as: :profile
  get 'blog', to: 'home#blog', as: :blog

  get 'contact', to: 'contact#new', as: :contact

end
