Rails.application.routes.draw do
  root 'pages#home'
  get  'agrupacion'          => 'pages#agrupacion'
  get  'servicios' 	         => 'pages#servicios'
  get  'preparadores'        => 'pages#preparadores'
  get  'admision'	         => 'pages#admision'

  get 'admin'                => 'admin#login'
  get 'admin/preparadores'   => 'admin#preparadores'
  resources :preparadors
end
