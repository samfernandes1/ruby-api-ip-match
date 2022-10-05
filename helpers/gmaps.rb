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

  address = object_return[21][3][13]

  list_address = address.split(",")

  road = list_address[0]
  district = list_address[1]
  city = list_address[2]
  cep = list_address[3]

  return road, district, city, cep

end
