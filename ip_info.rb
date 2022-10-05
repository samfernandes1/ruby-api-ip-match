require 'json'


module GetInfoIp

    def self.get_info(ip)
        result = `curl -s "https://ipinfo.io/widget/demo/#{ip}" \
        -H 'authority: ipinfo.io' \
        -H 'accept: */*' \
        -H 'accept-language: pt-BR,pt;q=0.9,en-US;q=0.8,en;q=0.7' \
        -H 'content-type: application/json' \
        -H 'cookie: _gid=GA1.2.2127665055.1664841678; flash=; _ga_RWP85XL4SC=GS1.1.1664967768.5.1.1664967821.7.0.0; _ga=GA1.2.516017765.1664841678; ajs_user_id=null; ajs_group_id=null; ajs_anonymous_id=%225b657446-5da4-4bd4-8e5d-4bda06d25992%22; _gat_UA-2336519-21=1' \
        -H 'referer: https://ipinfo.io/' \
        -H 'sec-ch-ua: "Chromium";v="106", "Google Chrome";v="106", "Not;A=Brand";v="99"' \
        -H 'sec-ch-ua-mobile: ?0' \
        -H 'sec-ch-ua-platform: "Linux"' \
        -H 'sec-fetch-dest: empty' \
        -H 'sec-fetch-mode: cors' \
        -H 'sec-fetch-site: same-origin' \
        -H 'user-agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/106.0.0.0 Safari/537.36' \
        --compressed`

        JSON.parse result
    end
    
end