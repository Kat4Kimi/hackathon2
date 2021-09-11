Rails.application.routes.draw do
  get 'trips/index'
  get 'trips/show'
  get 'trips/create'
  get 'trips/new'
  get 'trips/edit'
  get 'trips/update'
  get 'users/index'
  get 'users/show'
  get 'users/create'
  get 'users/new'
  get 'users/edit'
  get 'users/update'
root 'trips#index'


end
