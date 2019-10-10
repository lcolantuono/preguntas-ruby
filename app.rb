require 'sinatra'
require './lib/PregResp.rb'
require './lib/PregMultiple.rb'


get '/' do
  #@@Preg_resp = PregResp.new
  #@@Preg_resp.set_preg_resp "¿De qué color es el caballo blanco de San Martin?", "Blanco"
  @@Preg_resp_multiple = PregMultiple.new
	@@Preg_resp_multiple.set_preg_multiple "¿De qué color es el caballo blanco de San Martin?", ["Blanco", "Rojo", "Azul"], 0
	@@respuestas = @@Preg_resp_multiple.get_respuestas
  erb:portada
end

post '/' do
  respuesta = params["respuesta"].to_i
  @resultado = @@Preg_resp_multiple.validar respuesta
  erb:portada
end
