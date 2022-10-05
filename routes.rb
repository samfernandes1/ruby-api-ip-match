require 'sinatra'
require 'json'
require 'dotenv/load'
require_relative './database/database_conf.rb'


post '/' do
    content_type :json

    position = JSON.parse request.body.read

    latitude = position['lat']
    longitude = position['lon']

    latitude.to_s
    longitude.to_s
end
