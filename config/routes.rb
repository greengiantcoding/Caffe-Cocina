Rails.application.routes.draw do

  get '/ourstory' => 'dashboards#ourstory'
  get '/catering' => 'menus#catering'
  get '/censor' => 'reviews#censor'
  get '/admin_treat' => 'admin_food#delete_treat'
  get '/polaroid/:id' => 'admin_photos#polaroid'
  get '/admin_treat_edit' => 'admin_food#edit_treat'
  get '/lunchEdit' => 'admin_food#edit_lunch'
  get '/deleteLunch' => 'admin_food#delete_lunch'
  post '/breakfast_edit' => 'admin_food#edit_breakfast_image'
  post '/treats/new' => 'admin_food#addTreat'

  resources :staffs
  resources :events
  resources :photo_albums
  resources :merchandise
  resources :contacts
  resources :admin_abouts
  resources :admin_photos
  resources :admin_drinks
  resources :admin_food
  resources :admin_reviews
  resources :reviews
  resources :administrations
  resources :landings
  resources :dashboards
  resources :menus
 
  root 'landings#index'
  
end
