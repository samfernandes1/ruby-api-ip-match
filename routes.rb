require 'sinatra'
require 'json'
require 'pry'
require_relative './helpers/gmaps'
require_relative './helpers/queries_es'

set port: 7541
set bind: "65.108.9.219"

post '/getCompanyAccess' do

  content_type :json

  object = JSON.parse(request.body.read)

  latitude = object['lat']
  longitude = object['long']

  road, district, city, cep = getInfosGmaps(latitude, longitude)

  return get_company_by_cep(cep).to_json

rescue => err
  return "Ocorreu um erro"
end

puts @client
