require 'sinatra'
require 'json'
require 'pry'
require_relative './database/database_conf'
require_relative './helpers/gmaps'
require_relative './helpers/queries_es'

post '/getCompanyAccess' do

  content_type :json

  object = JSON.parse(request.body.read)

  latitude = object['lat']
  longitude = object['long']

  road, district, city, cep = getInfosGmaps(latitude, longitude)

  return get_company_by_cep(cep).to_json

end
