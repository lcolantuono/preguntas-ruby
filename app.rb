require 'sinatra'
require './lib/PregResp.rb'
require './lib/PregMultiple.rb'
require "./lib/Juego.rb"

get '/' do
  #@@Preg_resp = PregResp.new
  #@@Preg_resp.set_preg_resp "¿De qué color es el caballo blanco de San Martin?", "Blanco"
  preg_resp_multiple = PregMultiple.new
	preg_resp_multiple.set_preg_multiple "¿De qué color es el caballo blanco de San Martin?", ["Blanco", "Rojo", "Azul"], 0
	@@juego = Juego.new [preg_resp_multiple]
  erb:portada
end

post '/' do
  respuesta = params["respuesta"].to_i
  @resultado = @@juego.get_siguiente_pregunta.validar respuesta
  erb:portada
end
