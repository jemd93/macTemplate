Rails.application.routes.draw do
  root 'pages#home'
  get  'agrupacion'   => 'pages#agrupacion'
  get  'servicios' 	  => 'pages#servicios'
  get  'preparadores' => 'pages#preparadores'
  get  'admision'	  => 'pages#admision'
end
