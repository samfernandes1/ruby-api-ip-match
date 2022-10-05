require 'sinatra'
require 'json'
require 'dotenv/load'
# require_relative 'ip_info'
# require_relative 'hurricane'
require_relative 'bgpview'


post '/' do
    # content_type :json

    ip_company = JSON.parse request.body.read

    result = BgpView.get_info(ip_company['ip_value'])

    result.to_s
end