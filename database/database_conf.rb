require 'elasticsearch'
require 'dotenv/load'

HOST_ES = ENV['HOST_ES']
PORT_ES = ENV['PORT_ES']

@client = Elasticsearch::Client.new(url: "http://#{HOST_ES}:#{PORT_ES}", log: false)
