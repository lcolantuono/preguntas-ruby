class PregMultiple
	def set_preg_multiple pregunta, respuestas, posicion_correcta
		@pregunta = pregunta
		@respuestas = respuestas
		@posicion_correcta = posicion_correcta
	end

	def validar posible_respuesta
		get_respuesta_correcta == posible_respuesta ? "Correcto" : "Incorrecto"
	end

	def get_pregunta
		@pregunta
	end

	def get_respuestas
		@respuestas
	end
	
	def get_respuesta_correcta
		@respuestas[@posicion_correcta]
	end
end
