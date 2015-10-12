Rails.application.routes.draw do

  root 'home#new'

  get 'new', to: 'home#new', as: :new

  match 'save', to: 'contact#save', as: :save_contact, via: [:post, :put]
  get 'admin/contacts', to: 'admin#index', as: :get_contact

  get 'services', to: 'home#service', as: :service
  get 'profile', to: 'home#profile', as: :profile
  get 'contact', to: 'contact#new', as: :contact

end
