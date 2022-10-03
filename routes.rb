require 'sinatra'
require 'json'
require 'dotenv/load'
require_relative 'database/db'


post '/' do
    content_type :json

    ip_company = JSON.parse request.body.read

    result = Mysql_connect.get_match_ip(ip_company['ip_value'])

    result.first.to_json
end
