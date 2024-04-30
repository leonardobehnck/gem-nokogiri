require 'nokogiri'
require 'net/http'

https = Net::HTTP.new('example.com', 443)
#requisição para o site

https.use_ssl = true
#metodo do rb

response = https.get("/")


doc = Nokogiri::HTML(response.body)
#armazena o body do html no doc

p = doc.at('p')
#armazena o h1 do doc na variavel h1

puts p
#printa h1 