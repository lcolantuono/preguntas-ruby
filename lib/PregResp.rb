class PregResp
	def set_preg_resp pregunta, respuesta
		@pregunta = pregunta
		@respuesta = respuesta
	end

	def validar posible_respuesta
		@respuesta == posible_respuesta ? "Correcto" : "Incorrecto"
	end

	def get_pregunta
		@pregunta
	end
	
	def get_respuesta
		@respuesta
	end
end
