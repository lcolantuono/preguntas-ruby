require 'sinatra'
require './lib/PregResp.rb'
require './lib/PregMultiple.rb'
require "./lib/Juego.rb"

get '/' do
  #@@Preg_resp = PregResp.new
  #@@Preg_resp.set_preg_resp "¿De qué color es el caballo blanco de San Martin?", "Blanco"
	pregunta = "En una pecera había 10 peces, 2 se ahogaron y 3 se fueron nadando, ¿Cuántos peces quedaron?"
    respuestas = ["5", "8", "10"]
		preg_multiple2 = PregMultiple.new
		preg_multiple2.set_preg_multiple(pregunta, respuestas, 2)
  preg_resp_multiple = PregMultiple.new
	preg_resp_multiple.set_preg_multiple "¿De qué color es el caballo blanco de San Martin?", ["Blanco", "Rojo", "Azul"], 0
	@@juego = Juego.new [preg_resp_multiple, preg_multiple2]
  erb:portada
end

post '/' do
  respuesta = params["respuesta"].to_i
  @resultado = @@juego.get_siguiente_pregunta.validar respuesta
	if @resultado == "Incorrecto"
		@@juego.responde_mal
	end
  erb:portada
end

post '/siguiente' do
	@@juego.responde_bien
	erb:portada
end
