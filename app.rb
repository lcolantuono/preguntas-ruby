require 'sinatra'
require './lib/PregResp.rb'
require './lib/PregMultiple.rb'
require "./lib/Juego.rb"

@@juego = Juego.new

get '/' do
	@@juego.reset
  erb:portada
end

post '/' do
  respuesta = params["respuesta"].to_i
  @resultado = @@juego.validar respuesta
	if @@juego.get_vidas < 1
		erb:game_over
	else
		erb:portada
	end
end

post '/siguiente' do
	@@juego.responde_bien
	erb:portada
end
