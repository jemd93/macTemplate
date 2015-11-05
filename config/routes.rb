Rails.application.routes.draw do

  get 'posts/new'

  # Paginas publicas
  root 'pages#home'
  get  'agrupacion'          => 'pages#agrupacion'
  get  'servicios' 	         => 'pages#servicios'
  get  'preparadores'        => 'pages#preparadores'
  get  'admision'	           => 'pages#admision'

  # Admin
  get 'admin'                => 'admin#login'

  # Preparadores
  get 'admin/preparadores'   => 'admin#preparadores'
  match "admin/crear_preparador",        :to => "admin#crear_preparador",    via: [:get,:post]
  match "admin/eliminar_preparador/:id", :to => "admin#eliminar_preparador", via: [:put,:post,:get]

  # Servicios
  get 'admin/servicios'   => 'admin#servicios'
  match "admin/crear_servicio",        :to => "admin#crear_servicio",    via: [:get,:post]
  match "admin/eliminar_servicio/:id", :to => "admin#eliminar_servicio", via: [:put,:post,:get]

  # Admision
  get 'admin/admision'   => 'admin#admision'
  match "admin/crear_post",        :to => "admin#crear_post",    via: [:get,:post]
  match "admin/eliminar_post/:id", :to => "admin#eliminar_post", via: [:put,:post,:get]

  resources :preparadors, :servicios, :posts
end
