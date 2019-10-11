def get_preg_resps
	#@@Preg_resp = PregResp.new
  	#@@Preg_resp.set_preg_resp "¿De qué color es el caballo blanco de San Martin?", "Blanco"
	pregunta = "En una pecera había 10 peces, 2 se ahogaron y 3 se fueron nadando, ¿Cuántos peces quedaron?"
  	respuestas = ["5", "8", "10"]
	preg_multiple2 = PregMultiple.new
	preg_multiple2.set_preg_multiple(pregunta, respuestas, 2)
	preg_resp_multiple = PregMultiple.new
	preg_resp_multiple.set_preg_multiple "¿De qué color es el caballo blanco de San Martin?", ["Blanco", "Rojo", "Azul"], 0
	preg_resp_multiple3 = PregMultiple.new
	preg_resp_multiple3.set_preg_multiple "¿Qué haces al despertar que no puedes mientras duermes?", ["Comer", "Abrir los ojos", "Caminar"], 1
	preg_resp_multiple4 = PregMultiple.new
	preg_resp_multiple4.set_preg_multiple "¿Quién es el único que nunca pierde en un partido de fútbol?", ["Messi", "El diego", "El arbitro"], 2
	preg_resp_multiple5 = PregMultiple.new
	preg_resp_multiple5.set_preg_multiple "¿Qué es necesario para que un grupo de amigos con un solo paraguas no acabe empapado?", ["Que sean flacos", "Que no llueva", "Que el paraguas sea grande"], 1
	return [preg_multiple2, preg_resp_multiple, preg_resp_multiple3,preg_resp_multiple4, preg_resp_multiple5]
end
