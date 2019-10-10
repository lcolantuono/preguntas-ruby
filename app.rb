require 'sinatra'
require './lib/PregResp.rb'

get '/' do
  @@Preg_resp = PregResp.new
  @@Preg_resp.set_preg_resp "¿De qué color es el caballo blanco de San Martin?", "Blanco"
  erb:portada
end

post '/' do
  respuesta = params["respuesta"]
  @resultado = @@Preg_resp.validar respuesta
  erb:portada
end
