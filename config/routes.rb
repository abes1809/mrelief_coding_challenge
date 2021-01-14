Rails.application.routes.draw do

  get '/', to: 'cali_app#new'
  get '/cali_app/new', to: 'cali_app#new'
  post '/cali_app/create', to: 'cali_app#create'

end
