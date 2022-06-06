require 'json'

arr = JSON.parse <<END_OF_JSON
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
END_OF_JSON

results = []
mensagem = "CEO: "

arr.each do |hash|
  results << hash["nome"] + ' ' + mensagem + hash["CEO"] 
end

p results

