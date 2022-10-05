require 'json'


module BgpView

    def self.get_info(ip)
        result = `curl "https://bgpview.io/ip/#{ip}" \
        -H 'authority: bgpview.io' \
        -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9' \
        -H 'accept-language: pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7' \
        -H 'cache-control: max-age=0' \
        -H 'cookie: _ga=GA1.2.2099445100.1664841699; _gid=GA1.2.272663636.1664841699; _gat=1; laravel_session=eyJpdiI6InlJbzZlV2RlR3JSZXcxTDB4am1WelE9PSIsInZhbHVlIjoiM3F2bzlka3NSOTZEWFpMWEZQVzlBOFNOUUhCbFYyZXdIdnJtSnhSNzd4dzc5VjFzUWlVanF4THp4TEJYQzRoWXRvdFh0RktFV0ZlbXBOR3IzdW44N0E9PSIsIm1hYyI6IjNiODYwNTUwMjZiZjY3YjJlYzg2OTE0YzQ2NmRjZTQxODZlMjc3ZGI3ZDI2ZjIwOTgzMDgwMTlmYzVjNmUxNmUifQ%3D%3D' \
        -H 'sec-ch-ua: "Chromium";v="106", "Google Chrome";v="106", "Not;A=Brand";v="99"' \
        -H 'sec-ch-ua-mobile: ?0' \
        -H 'sec-ch-ua-platform: "Linux"' \
        -H 'sec-fetch-dest: document' \
        -H 'sec-fetch-mode: navigate' \
        -H 'sec-fetch-site: cross-site' \
        -H 'sec-fetch-user: ?1' \
        -H 'upgrade-insecure-requests: 1' \
        -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36' \
        --compressed`

        # JSON.parse result
        result
    end
    
end