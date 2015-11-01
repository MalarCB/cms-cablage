Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  root 'home#new'

  get 'new', to: 'home#new', as: :new

  match 'save', to: 'contact#save', as: :save_contact, via: [:post, :put, :patch]

  get 'services', to: 'home#service', as: :service
  get 'profile', to: 'home#profile', as: :profile
  get 'blog', to: 'home#blog', as: :blog

  get 'contact', to: 'contact#new', as: :contact

end
