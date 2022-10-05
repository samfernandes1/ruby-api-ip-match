def get_company_by_cep(cep)
  query = {
    "size": 15,
    "_source": [
      "nu_cnpj",
      "no_fantasia",
      "no_pessoa",
      "no_municipio",
      "sg_uf",
      "nu_cep"
    ], 
    "query": {
      "bool": {
        "must": [
          {
            "match_phrase": {
              "nu_cep": cep
            }
          },
          {
            "match_phrase": {
              "ds_situacao_cnpj": "ATIVA"
            }
          },
          {
            "match_phrase": {
              "st_mei": "N"
            }
          }
        ]
      }
    }
  }

  result = @client.search(body: query, index: ENV[:INDEX_ES])

  return handle_result(result)
end

def handle_result(result)
  companies = result["hits"]["hits"].map do |hit|
    { 
      cnpj: hit["_source"]["nu_cnpj"],
      endereco: "#{hit["_source"]["no_municipio"], hit["_source"]["sg_uf"]}, #{hit["_source"]["nu_cep"]}",
      fantasy_name: hit["_source"]["no_fantasia"],
      no_pessoa: hit["_source"]["no_pessoa"]
    }
  end

  return companies
end