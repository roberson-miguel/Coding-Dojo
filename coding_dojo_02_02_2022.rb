require 'json'

data = JSON.parse <<COMPANY_JSON
[
  {
   "nome":"Samsung",
   "valorDeMercado":50,
   "CEO":"Kim Hyun Suk",
   "anoDeCriacao":1938
},
{
   "nome":"Microsoft",
   "valorDeMercado":415,
   "CEO":"Satya Nadella",
   "anoDeCriacao":1975
},
{
   "nome":"Intel",
   "valorDeMercado":117,
   "CEO":"Brian Krzanich",
   "anoDeCriacao":1968
},
{
   "nome":"Facebook",
   "valorDeMercado":383,
   "CEO":"Mark Zuckerberg",
   "anoDeCriacao":2004
},
{
   "nome":"Spotify",
   "valorDeMercado":30,
   "CEO":"Daniel Ek",
   "anoDeCriacao":2006
},
{
   "nome":"Apple",
   "valorDeMercado":845,
   "CEO":"Tim Cook",
   "anoDeCriacao":1976
}
]
COMPANY_JSON


p '----------------------------'
p "Empresas criadas depois do ano 2000:"

result_ex_1 = []

result_ex_1 = data.filter_map do |hash|
  hash if hash["anoDeCriacao"] > 2000
end

p result_ex_1

p '----------------------------'
p "CEO das empresas:"

result_ex_2 = data.map do |hash|
  "#{hash['nome']} CEO: #{hash["CEO"]}"
end

p result_ex_2

p '----------------------------'
p "Soma do valor de mercado de todas as empresas:"

result_ex_3 = data.map do |hash|
  hash["valorDeMercado"]
end.sum

p result_ex_3
p '----------------------------'