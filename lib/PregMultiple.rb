class PregMultiple
	def set_preg_multiple pregunta, respuestas, posicion_correcta
		@pregunta = pregunta
		@respuestas = respuestas
		@posicion_correcta = posicion_correcta
		@ayuda = false
	end

	def validar posible_respuesta
		@posicion_correcta == posible_respuesta ? "Correcto" : "Incorrecto"
	end

	def get_pregunta
		@pregunta
	end

	def ayuda
		@ayuda = true
	end

	def pidio_ayuda
		@ayuda
	end

	def get_respuestas
		if !@ayuda
			@respuestas
		else
			if @posicion_correcta < @respuestas.size - 1
				array_ayuda =  @respuestas[0,@posicion_correcta+1].concat(["ELIMINADA"]).concat(@respuestas[@posicion_correcta+2,@respuestas.size - 1])
			else
				array_ayuda = ["ELIMINADA"].concat @respuestas[1, @respuestas.size - 1]
			end
		end
	end
	
	def get_respuesta_correcta
		@respuestas[@posicion_correcta]
	end
end
