def get_preg_resps
	#@@Preg_resp = PregResp.new
  	#@@Preg_resp.set_preg_resp "¿De qué color es el caballo blanco de San Martin?", "Blanco"
	pregunta = "En una pecera había 10 peces, 2 se ahogaron y 3 se fueron nadando, ¿Cuántos peces quedaron?"
  	respuestas = ["5", "8", "10"]
	preg_multiple2 = PregMultiple.new
	preg_multiple2.set_preg_multiple(pregunta, respuestas, 2)
	preg_resp_multiple = PregMultiple.new
	preg_resp_multiple.set_preg_multiple "¿De qué color es el caballo blanco de San Martin?", ["Blanco", "Rojo", "Azul"], 0
	return [preg_multiple2, preg_resp_multiple]
end
