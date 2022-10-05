require 'json'


module GetHurricaneInfo

    def self.get_info(ip)
        result = `curl "https://bgp.he.net/ip/#{ip}" \
        -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
        -H 'Accept-Language: pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7' \
        -H 'Connection: keep-alive' \
        -H 'Cookie: _gcl_au=1.1.607672503.1664841681; __utmz=83743493.1664841681.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); __utma=83743493.189337442.1664841681.1664892114.1664967478.4; __utmc=83743493; c=BAgiEjE3Ny4zNy4yMDYuODY%3D--0f027c916f0b7c93724e87789696437935033d56; __utmt=1; _bgp_session=BAh7BzoPc2Vzc2lvbl9pZEkiJWEzMGNkN2QwNWVjZmEzNTc1NzEwMjQ0OWExM2E4YzBlBjoGRUY6EF9jc3JmX3Rva2VuSSIxNUpWYnIxTnY2T1EyQkljbEpCbVVUQ25STGdLZkhlbEtiVzAxa1VncXZLUT0GOwZG--121c35aa20ee4638a7e752bf11c3764ea1b898a8; __utmb=83743493.10.10.1664967478' \
        -H 'If-None-Match: "7f6dc2e12ec2606c8a1315dc31543c00"' \
        -H 'Referer: https://bgp.he.net/country/BR' \
        -H 'Sec-Fetch-Dest: document' \
        -H 'Sec-Fetch-Mode: navigate' \
        -H 'Sec-Fetch-Site: same-origin' \
        -H 'Sec-Fetch-User: ?1' \
        -H 'Upgrade-Insecure-Requests: 1' \
        -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36' \
        -H 'sec-ch-ua: "Chromium";v="106", "Google Chrome";v="106", "Not;A=Brand";v="99"' \
        -H 'sec-ch-ua-mobile: ?0' \
        -H 'sec-ch-ua-platform: "Linux"' \
        --compressed`

        # JSON.parse result
        result
    end
    
end