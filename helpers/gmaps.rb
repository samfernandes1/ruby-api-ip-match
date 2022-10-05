require 'faraday'

def getRequestMaps(searchMaps)

  conn = Faraday.new(
    "https://www.google.com/maps/embed?origin=mfe&pb=\u00211m3\u00212m1\u00211s#{CGI.escape(searchMaps)}\u00216i13"
  )

  response = conn.get

  return response.body

end

def getInfosGmaps(lat, long)

  response = getRequestMaps("#{lat}, #{long}")

  object_return = response.scan(/initEmbed\(.*\);/)
  object_return = object_return.first.split("ed(").last.split(");").first
  object_return = JSON.parse(object_return, symbolize_names: true)

  binding.pry

end
