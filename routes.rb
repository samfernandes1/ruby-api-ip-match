require 'sinatra'
require 'json'
require 'dotenv/load'
require 'pry'
require_relative './database/database_conf.rb'


post '/getCompanyAccess' do

  content_type :json

  object = JSON.parse(request.body.read)

  latitude = object['lat']
  longitude = object['lon']

  latitude.to_s
  longitude.to_s

end
