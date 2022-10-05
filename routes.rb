require 'sinatra'
require 'json'
require 'pry'
# require_relative './database/database_conf.rb'
require_relative './helpers/gmaps'

post '/getCompanyAccess' do

  content_type :json

  object = JSON.parse(request.body.read)

  latitude = object['lat']
  longitude = object['long']

  latitude.to_s
  longitude.to_s

  infos = getInfosGmaps(latitude, longitude)

end
